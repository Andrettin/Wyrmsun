import QtQuick
import QtQuick.Controls
import QtQuick.Window
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
		if (viewport.height === 0) {
			return
		}
		
		wyrmgus.call_lua_command("SetVideoSize(" + viewport.width + ", " + viewport.height + ");")
	}
	
	onHeightChanged: {
		if (viewport.width === 0) {
			return
		}
		
		wyrmgus.call_lua_command("SetVideoSize(" + viewport.width + ", " + viewport.height + ");")
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
				title: qsTr("Error"),
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
