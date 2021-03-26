import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
	id: window
	visible: true
	title: qsTr("Wyrmsun")
	width: Screen.width
	height: Screen.height + 1 //it needs to be +1 otherwise it becomes (non-borderless) fullscreen automatically
	flags: Qt.FramelessWindowHint | Qt.Window
	color: "black"
	
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
				var component = Qt.createComponent("Viewport.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				component.createObject(window)

				if (wyrmgus.preferences.fullscreen) {
					window.visibility = Window.FullScreen
				}
				
				wyrmgus.call_lua_command("SetVideoSize(" + width + ", " + height + ");")
			}
		}
	}
		
	onClosing: {
		wyrmgus.exit()
	}
	
	//format tooltip text
	function tooltip(text) {
		return "<font color=\"white\">" + text + "</font>"
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
