import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

Popup {
	id: load_game_dialog
	x: parent.width / 2 - (width / 2)
	y: parent.height / 2 - (height / 2)
	padding: 0
	modal: true
	dim: false
	focus: false
	closePolicy: Popup.NoAutoClose
	
	property string interface_style: "default"
	
	background: Image {
		source: "image://interface/" + interface_style + "/panel/3"
		fillMode: Image.Pad
	}
	
	MouseArea {
		anchors.fill: parent
		hoverEnabled: true
		//prevent events from propagating below
	}
		
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Cancel"
		hotkey: "c"
		
		onClicked: {
			load_game_dialog.close()
		}
	}
	
	function on_pressed_key(event) {
		console.error("TEST")
		
		for (var i = 0; i < load_game_dialog.contentItem.children.length; ++i) {
			var child_element = load_game_dialog.contentItem.children[i]
			
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
		
	function on_released_key(event) {
		console.error("TEST")
		
		for (var i = 0; i < load_game_dialog.contentItem.children.length; ++i) {
			var child_element = load_game_dialog.contentItem.children[i]
			
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
	
	Component.onCompleted: {
		parent.popups.push(load_game_dialog)
	}
}
