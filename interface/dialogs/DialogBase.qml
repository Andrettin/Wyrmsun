import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

Popup {
	id: dialog
	x: parent.width / 2 - (width / 2)
	y: parent.height / 2 - (height / 2)
	padding: 0
	modal: true
	dim: false
	focus: false
	closePolicy: Popup.NoAutoClose
	
	property string interface_style: "default"
	property int panel: 1
	property string title: ""
	readonly property var title_item: title_text
	property bool open_when_menu_is_closed: false
	
	background: Image {
		source: "image://interface/" + interface_style + "/panel/" + panel
		fillMode: Image.Pad
	}
	
	MouseArea {
		anchors.fill: parent
		hoverEnabled: true
		//prevent events from propagating below
	}
	
	Pane {
		id: pane
		anchors.fill: parent
		focusPolicy: Qt.ClickFocus
		background: null
		
		Keys.onPressed: {
			dialog.on_pressed_key(event)
		}
		
		Keys.onReleased: {
			dialog.on_released_key(event)
		}
	}
	
	LargeText {
		id: title_text
		text: dialog.title
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
	}
	
	onOpened: {
		if (parent.on_popup_opened) {
			parent.on_popup_opened(dialog)
		}
	}
	
	onClosed: {
		dialog.give_up_focus()
		
		if (parent.on_popup_closed) {
			parent.on_popup_closed(dialog)
		}
	}
	
	function on_pressed_key(event) {
		for (var i = 0; i < dialog.contentItem.children.length; ++i) {
			var child_element = dialog.contentItem.children[i]
			
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
		
	function on_released_key(event) {
		for (var i = 0; i < dialog.contentItem.children.length; ++i) {
			var child_element = dialog.contentItem.children[i]
			
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
		
	function give_up_focus() {
		parent.forceActiveFocus()
	}
	
	function receive_focus() {
		pane.forceActiveFocus()
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(pane)
		parent.popups.push(dialog)
	}
}
