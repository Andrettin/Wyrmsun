import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: widget
	clip: true
	
	property string widget_type: ""
	property string interface_style: "default"
	property string text: ""
	property string hotkey: ""
	property string tooltip: ""
	property bool hotkey_pressed: false
	property bool pressed: mouse_area.containsPress || hotkey_pressed
	property bool hovered: mouse_area.containsMouse
	property bool disabled: false
	readonly property var image: widget_image
	readonly property var mouse_area_item: mouse_area
	property var mouse_area_anchor_source: widget_image
	
	signal clicked()
	
	ToolTip.visible: mouse_area.containsMouse && tooltip.length > 0
	ToolTip.delay: 1000
	ToolTip.text: window.tooltip(tooltip)
	
	WidgetImage {
		id: widget_image
		anchors.verticalCenter: parent.verticalCenter
		anchors.left: parent.left
		widget_type: widget.widget_type
		interface_style: widget.interface_style
		pressed: widget.pressed
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: mouse_area_anchor_source
		hoverEnabled: true
		z: 2 //ensure the mouse area will be on top of any labels added by derived classes
		
		onClicked: {
			widget.clicked()
		}
	}
	
	onClicked: {
		if (disabled) {
			wyrmgus.play_sound("placement_error")
		} else {
			wyrmgus.play_sound("click")
		}
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
		if (widget.hotkey != "" && event_matches_hotkey(event)) {
			widget.hotkey_pressed = true
			event.accepted = true
		}
	}
	
	function on_released_key(event) {
		if (event.isAutoRepeat) {
			return
		}
		
		if (widget.hotkey != "" && event_matches_hotkey(event)) {
			widget.hotkey_pressed = false
			event.accepted = true
			widget.clicked()
		}
	}
	
	function event_matches_hotkey(event) {
		if (event.text == widget.hotkey) {
			return true
		} else if (widget.hotkey.startsWith("f")) {
			if (widget.hotkey == "f10" && event.key == Qt.Key_F10) {
				return true
			}
		}
		
		return false
	}
}
