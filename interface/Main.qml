import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
	id: window
	visible: false
	width: 1680
	height: 960
	title: qsTr("Wyrmsun")
	flags: Qt.FramelessWindowHint
	//visibility: "FullScreen"
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	Connections {
		target: wyrmgus
		onRunningChanged: {
			if (visible && !wyrmgus.parameters.test_run && wyrmgus.running) {
				var component = Qt.createComponent("MenuStack.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				component.createObject(window)
			}
		}
	}
	
	Connections {
		target: wyrmgus.game
		onStarted: {
			if (visible) {
				var component = Qt.createComponent("MapView.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				component.createObject(window)
			}
		}
	}
	
	onClosing: {
		wyrmgus.exit()
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
}
