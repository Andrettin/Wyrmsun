import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
	id: button
	width: image.width
	height: image.height
	
	property string button_type: ""
	property string text: ""
	property string hotkey: ""

	Image {
		id: image
		source: "image://interface/default/" + parent.button_type + "/" + (mouse_area.containsPress ? "pressed" : "normal")
	}
	
	NormalText {
		id: label
		text: highlight_hotkey(parent.text, parent.hotkey)
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: mouse_area.containsPress ? 2 : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: mouse_area.containsPress ? 2 : 0
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
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
}
