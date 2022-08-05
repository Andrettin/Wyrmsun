import QtQuick 2.12
import QtQuick.Controls 2.12
import QtMultimedia 5.15

Item {
	id: button
	width: image.width
	height: image.height
	
	property string text: ""
	property string hotkey: ""
	property string tooltip: ""
	property bool hotkey_pressed: false
	property bool pressed: mouse_area.containsPress || hotkey_pressed
	property bool hovered: mouse_area.containsMouse
	property bool disabled: false
	
	signal clicked()
	
	ToolTip.visible: mouse_area.containsMouse && tooltip.length > 0
	ToolTip.delay: 1000
	ToolTip.text: tooltip
	
	Image {
		id: image
		anchors.verticalCenter: parent.verticalCenter
		anchors.left: parent.left
		source: "../graphics/interface/default/button_large_" + (grayed ? "grayed" : (pressed ? "pressed" : "normal")) + scale_factor_suffix + ".png"
		fillMode: Image.Pad
		
		readonly property bool pressed: button.pressed
		readonly property bool grayed: !button.enabled
	}
	
	NormalText {
		id: label
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: parent.pressed ? 1 * scale_factor : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: parent.pressed ? 1 * scale_factor : 0
		text: parent.enabled ? (parent.hovered ? highlight(parent.text) : highlight_hotkey(parent.text, parent.hotkey)) : parent.text
		scale_factor: window.scale_factor
		color: parent.enabled ? "white" : "gray"
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: image
		hoverEnabled: true
		
		onClicked: {
			button.clicked()
		}
	}
	
	SoundEffect {
		id: clicked_sound
		source: "../sounds/interface/click.wav"
	}
	
	SoundEffect {
		id: error_sound
		source: "../sounds/interface/placement_error.wav"
	}
	
	onClicked: {
		if (disabled) {
			error_sound.play()
		} else {
			clicked_sound.play()
		}
	}
	
	function highlight_hotkey(text, hotkey) {
		if (hotkey == "") {
			return text
		}
		
		var hotkey_pos = text.toLowerCase().search(hotkey)
		
		if (hotkey_pos == -1) {
			return text + " (" + highlight(hotkey.toUpperCase()) + ")"
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
		if (event.isAutoRepeat) {
			return
		}
		
		if (button.hotkey != "" && event.text == button.hotkey) {
			button.hotkey_pressed = false
			event.accepted = true
			button.clicked()
		}
	}
}
