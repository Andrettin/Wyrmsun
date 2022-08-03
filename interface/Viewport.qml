import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import frame_buffer_object 1.0
import "./menus"

Item {
	id: viewport
	anchors.left: window.left
	anchors.top: window.top
	width: wyrmgus.preferences.fullscreen ? Screen.width : window.width
	height: wyrmgus.preferences.fullscreen ? Screen.height : window.height
	
	property var map_view_underlay: null
	property var map_view: null
	
	onWidthChanged: {
		wyrmgus.call_lua_command("SetVideoSize(" + viewport.width + ", " + viewport.height + ");")
	}
	
	onHeightChanged: {
		wyrmgus.call_lua_command("SetVideoSize(" + viewport.width + ", " + viewport.height + ");")
	}
	
	Item { //tooltips need to be attached to an item
		id: tooltip_manager
		
		property int tooltip_y_override: 0
		
		//set the shared properties for tooltips
		ToolTip.toolTip.palette.toolTipText: "white"
		ToolTip.toolTip.font.family: berenika_font.name
		ToolTip.toolTip.font.pixelSize: 12 * wyrmgus.scale_factor
		ToolTip.toolTip.background: Rectangle {
			color: "black"
			opacity: 0.90
			border.color: "gray"
			border.width: 1
			radius: 5 * wyrmgus.scale_factor
		}
		ToolTip.toolTip.contentItem: Text {
			text: ToolTip.toolTip.text
			font: ToolTip.toolTip.font
			wrapMode: Text.WordWrap
			color: ToolTip.toolTip.palette.toolTipText
			textFormat: Text.RichText
			width: Math.min(contentWidth, 512 * wyrmgus.scale_factor)
		}
		ToolTip.toolTip.onOpened: {
			if (tooltip_manager.tooltip_y_override !== 0) {
				ToolTip.toolTip.y = tooltip_manager.tooltip_y_override
				tooltip_manager.tooltip_y_override = 0
			}
		}
	}
	
	MouseArea {
		id: frame_buffer_object_mouse_area
		anchors.fill: parent
		z: -1
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
	}
	
	FrameBufferObject {
		id: frame_buffer_object
		anchors.fill: parent
		z: 1 //place it over the menus
	}
	
	MenuStack {
		id: menu_stack
		initialItem: "menus/MainMenu.qml"
		focus: wyrmgus.game.running == false
	}
	
	LoadingScreen {
	}
	
	Connections {
		target: wyrmgus.game
		
		function onStarted() {
			var underlay_component = Qt.createComponent("MapViewUnderlay.qml")
			
			if (underlay_component.status == Component.Error) {
				console.error(underlay_component.errorString())
				return
			}
			
			map_view_underlay = underlay_component.createObject(viewport)
			
			var component = Qt.createComponent("MapView.qml")
			
			if (component.status == Component.Error) {
				console.error(component.errorString())
				return
			}
			
			map_view = component.createObject(viewport)
		}
		
		function onStopped() {
			if (wyrmgus.game.results !== null) {
				if (wyrmgus.game.results.victory || wyrmgus.game.results.defeat || wyrmgus.game.results.draw) {
					menu_stack.push("menus/ResultsMenu.qml")
				}
			}
			map_view_underlay.destroy()
			map_view.destroy()
		}
	}
	
	Connections {
		target: wyrmgus
		
		function onAchievementUnlockedDialogOpened(achievement) {
			var component = Qt.createComponent("dialogs/AchievementUnlockedDialog.qml")
			
			if (component.status == Component.Error) {
				console.error(component.errorString())
				return
			}
			
			var dialog_parent = null
			if (wyrmgus.game.running) {
				dialog_parent = map_view
			} else {
				dialog_parent = menu_stack.currentItem
			}
			
			var achievement_dialog = component.createObject(dialog_parent, { achievement: achievement })
			achievement_dialog.open()
		}
		
		function onError_occurred(error_message) {
			var component = Qt.createComponent("dialogs/GenericDialog.qml")
			
			if (component.status == Component.Error) {
				console.error(component.errorString())
				return
			}
			
			var dialog_parent = null
			if (wyrmgus.game.running) {
				dialog_parent = map_view
			} else {
				dialog_parent = menu_stack.currentItem
			}
			
			var error_dialog = component.createObject(dialog_parent, {
				title: "Error",
				text: error_message,
				interface_style: wyrmgus.current_interface_style ? wyrmgus.current_interface_style.identifier : "default"
			})
			
			error_dialog.open()
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(frame_buffer_object_mouse_area)
		wyrmgus.check_achievements()
	}
}
