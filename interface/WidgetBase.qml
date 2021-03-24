import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: widget
	
	property string widget_type: ""
	property string interface_style: "default"
	property string text: ""
	property string hotkey: ""
	property string tooltip: ""
	property bool hotkey_pressed: false
	property bool pressed: mouse_area.containsPress || hotkey_pressed
	property bool hovered: mouse_area.containsMouse
	readonly property var image: widget_image
	
	signal clicked()
	
	ToolTip.visible: mouse_area.containsMouse && tooltip.length > 0
	ToolTip.delay: 1000
	ToolTip.text: window.tooltip(tooltip)
	
	Image {
		id: widget_image
		anchors.verticalCenter: parent.verticalCenter
		anchors.left: parent.left
		source: "image://interface/" + interface_style + "/" + parent.widget_type + "/" + (parent.pressed ? "pressed" : "normal")
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: widget_image
		hoverEnabled: true
		z: 2 //ensure the mouse area will be on top of any labels added by derived classes
		
		onClicked: {
			widget.clicked()
		}
	}
	
	onClicked: {
		wyrmgus.play_sound("click")
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
		if (widget.hotkey != "" && event.text == widget.hotkey) {
			widget.hotkey_pressed = true
			event.accepted = true
		}
	}
	
	function on_released_key(event) {
		if (widget.hotkey != "" && event.text == widget.hotkey) {
			widget.hotkey_pressed = false
			event.accepted = true
			widget.clicked()
		}
	}
}
