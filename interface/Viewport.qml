import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import frame_buffer_object 1.0
import "./menus"

Item {
	id: viewport
	anchors.left: window.left
	anchors.top: window.top
	width: Screen.width
	height: Screen.height
	
	property var map_view_underlay: null
	property var map_view: null
	
	Item { //tooltips need to be attached to an item
		//set the shared properties for tooltips
		ToolTip.toolTip.palette.text: "white"
		ToolTip.toolTip.font.family: berenika_font.name
		ToolTip.toolTip.font.pixelSize: 12 * wyrmgus.defines.scale_factor
		ToolTip.toolTip.contentWidth: tooltip_width_reference_text.contentWidth
		ToolTip.toolTip.background: Rectangle {
			color: "black"
			opacity: 0.90
			border.color: "gray"
			border.width: 1
			radius: 5 * wyrmgus.defines.scale_factor
		}
		ToolTip.toolTip.onTextChanged: tooltip_width_reference_text.text = ToolTip.toolTip.text
		
		Text {
			id: tooltip_width_reference_text
			text: ""
			x: Screen.width + 4 //place it offscreen, this is for calculating the text width only, it shouldn't be visible
			font.family: berenika_font.name
			font.pixelSize: 12 * wyrmgus.defines.scale_factor
			wrapMode: Text.WordWrap
			width: 512 * wyrmgus.defines.scale_factor
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
		onStarted: {
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
	}
	
	Connections {
		target: wyrmgus.game
		onStopped: {
			if (wyrmgus.game.results !== null) {
				if (wyrmgus.game.results.victory || wyrmgus.game.results.defeat || wyrmgus.game.results.draw) {
					menu_stack.push("menus/ResultsMenu.qml")
					wyrmgus.call_lua_command("RunResultsMenu();")
				}
			}
			map_view_underlay.destroy()
			map_view.destroy()
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(frame_buffer_object_mouse_area)
	}
}
