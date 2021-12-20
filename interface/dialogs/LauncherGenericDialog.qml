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
	
	property int panel: 4
	property string title: ""
	readonly property var title_item: title_text
	property string text: ""
	
	background: Image {
		source: "../../graphics/interface/dwarven/panel_" + panel + scale_factor_suffix + ".png"
		fillMode: Image.Pad
		cache: false
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
		anchors.topMargin: 16 * scale_factor
		scale_factor: window.scale_factor
	}

	LauncherScrollableTextArea {
		id: text_label
		anchors.top: title_item.bottom
		anchors.topMargin: 8 * scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * scale_factor
		text: dialog.text
	}
	
	LauncherButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			dialog.close()
		}
	}
	
	onClosed: {
		dialog.give_up_focus()
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
}
