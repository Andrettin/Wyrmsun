import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: button
	width: image.width
	height: image.height
	
	property string button_type: ""
	property string text: ""
	property string hotkey: ""
	property bool hotkey_pressed: false
	property bool pressed: mouse_area.containsPress || hotkey_pressed

	Image {
		id: image
		source: "image://interface/default/" + parent.button_type + "/" + (parent.pressed ? "pressed" : "normal")
	}
	
	NormalText {
		id: label
		text: mouse_area.containsMouse ? highlight(parent.text) : highlight_hotkey(parent.text, parent.hotkey)
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
		hoverEnabled: true
	}
	
	Keys.onPressed: {
		on_pressed_key(event)
	}
	
	//highlight hotkey in text
	function highlight_hotkey(text, hotkey) {
		if (hotkey == "") {
			return text
		}
		
		var hotkey_pos = text.toLowerCase().search(hotkey)
		
		if (hotkey_pos == -1) {
			return text
		}
		
		var post_hotkey_pos = hotkey_pos + hotkey.length
		return text.substr(0, hotkey_pos) + highlight(text.substr(hotkey_pos, hotkey.length)) + text.substr(post_hotkey_pos, text.length - (post_hotkey_pos))
	}
	
	function on_pressed_key(event) {
		if (button.hotkey != "" && event.text == button.hotkey) {
			button.hotkey_pressed = true
			event.accepted = true
		}
	}
	
	function on_released_key(event) {
		if (button.hotkey != "" && event.text == button.hotkey) {
			button.hotkey_pressed = false
			event.accepted = true
		}
	}
}
