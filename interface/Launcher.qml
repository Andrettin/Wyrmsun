import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
	id: window
	visible: true
	title: qsTr("Wyrmsun Launcher")
	width: 696
	height: 364
	color: "black"
	
	readonly property int scale_factor: 2
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	FontLoader {
		id: berenika_bold_font
		source: "../fonts/berenika_bold.ttf"
	}
	
	Item {
		id: viewport
		anchors.fill: parent
		focus: true
		
		Image {
			id: background
			anchors.fill: parent
			source: "../graphics/interface/launcher_background.png"
			fillMode: Image.PreserveAspectCrop
		}
		
		LauncherButton {
			anchors.bottom: parent.bottom
			anchors.bottomMargin: 8 * scale_factor
			anchors.right: parent.right
			anchors.rightMargin: 8 * scale_factor
			text: "Start"
			hotkey: "s"
			
			onClicked: {
				enabled = false
				process_manager.start()
			}
		}
		
		Keys.onPressed: {
			for (var i = 0; i < viewport.children.length; ++i) {
				var child_element = viewport.children[i]
				if (child_element.on_pressed_key) {
					child_element.on_pressed_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
		
		Keys.onReleased: {
			for (var i = 0; i < viewport.children.length; ++i) {
				var child_element = viewport.children[i]
				if (child_element.on_released_key) {
					child_element.on_released_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
	}

	function tooltip(text) {
		return "<font color=\"white\">" + text + "</font>"
	}

	function highlight(text) {
		return "<font color=\"gold\">" + text + "</font>"
	}
}
