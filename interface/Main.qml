import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import frame_buffer_object 1.0

Window {
	id: window
	visible: true
	title: qsTr("Wyrmsun")
	width: Screen.width
	height: Screen.height + 1 //it needs to be +1 otherwise it becomes (non-borderless) fullscreen automatically
	flags: Qt.FramelessWindowHint | Qt.Window
	
	property var menu_stack: null
	property var map_view_underlay: null
	property var map_view: null
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	FontLoader {
		id: berenika_bold_font
		source: "../fonts/berenika_bold.ttf"
	}
	
	Connections {
		target: wyrmgus
		onRunningChanged: {
			if (!wyrmgus.parameters.test_run && wyrmgus.running) {
				if (wyrmgus.preferences.fullscreen) {
					window.visibility = Window.FullScreen
				}
				
				var menu_stack_component = Qt.createComponent("menus/MenuStack.qml")
				
				if (menu_stack_component.status == Component.Error) {
					console.error(menu_stack_component.errorString())
					return
				}
				
				menu_stack = menu_stack_component.createObject(window)
				
				wyrmgus.call_lua_command("SetVideoSize(" + width + ", " + height + ");")
				
				var loading_screen_component = Qt.createComponent("LoadingScreen.qml")
				
				if (loading_screen_component.status == Component.Error) {
					console.error(loading_screen_component.errorString())
					return
				}
				
				loading_screen_component.createObject(window)
			}
		}
	}
	
	Connections {
		target: wyrmgus.game
		onStarted: {
			var underlay_component = Qt.createComponent("MapViewUnderlay.qml")
			
			if (underlay_component.status == Component.Error) {
				console.error(underlay_component.errorString())
				return
			}
			
			map_view_underlay = underlay_component.createObject(window)
			
			var component = Qt.createComponent("MapView.qml")
			
			if (component.status == Component.Error) {
				console.error(component.errorString())
				return
			}
			
			map_view = component.createObject(window)
		}
	}
	
	Connections {
		target: wyrmgus.game
		onStopped: {
			map_view_underlay.destroy()
			map_view.destroy()
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
	
	onClosing: {
		wyrmgus.exit()
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(frame_buffer_object_mouse_area)
	}
	
	//highlight text
	function highlight(text) {
		return "<font color=\"gold\">" + text + "</font>"
	}
	
	//generate a random number
	function random(n) {
		return Math.floor(Math.random() * n)
	}
	
	//generate a random boolean value
	function random_bool() {
		return random(2) == 1
	}
	
	//get a random element from an array
	function random_element(arr) {
		return arr[random(arr.length)]
	}
}
