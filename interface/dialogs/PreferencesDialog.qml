import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: preferences_dialog
	panel: 5
	title: qsTr("Preferences")
	
	LabeledRadioImageButton {
		id: show_hotkeys_radio_button
		anchors.left: game_speed_slider.left
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Show Hotkeys")
		checked: wyrmgus.preferences.show_hotkeys
		interface_style: preferences_dialog.interface_style
		
		onCheckedChanged: {
			wyrmgus.preferences.show_hotkeys = checked
		}
	}
	
	LabeledRadioImageButton {
		id: reverse_mousewheel_scrolling_radio_button
		anchors.left: game_speed_slider.left
		anchors.top: show_hotkeys_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Reverse Mousewheel Scrolling")
		checked: wyrmgus.preferences.reverse_mousewheel_scrolling
		interface_style: preferences_dialog.interface_style
		
		onCheckedChanged: {
			wyrmgus.preferences.reverse_mousewheel_scrolling = checked
		}
	}
	
	LabeledSlider {
		id: game_speed_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: reverse_mousewheel_scrolling_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Game Speed")
		min_text: qsTr("slow")
		max_text: qsTr("fast")
		from: 15
		to: 75
		value: wyrmgus.preferences.game_speed
		step_size: 5
		interface_style: preferences_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.game_speed = value
		}
	}
	
	LabeledSlider {
		id: mouse_scroll_speed_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: game_speed_slider.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Mouse Scroll Speed")
		min_text: qsTr("slow")
		max_text: qsTr("fast")
		from: 1
		to: 10
		value: wyrmgus.preferences.mouse_scroll_speed
		step_size: 1
		interface_style: preferences_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.mouse_scroll_speed = value
		}
	}
	
	LabeledSlider {
		id: key_scroll_speed_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: mouse_scroll_speed_slider.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Key Scroll Speed")
		min_text: qsTr("slow")
		max_text: qsTr("fast")
		from: 1
		to: 10
		value: wyrmgus.preferences.key_scroll_speed
		step_size: 1
		interface_style: preferences_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.key_scroll_speed = value
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Previous Menu")
		hotkey: "esc"
		interface_style: preferences_dialog.interface_style
		
		onClicked: {
			wyrmgus.preferences.save()
			preferences_dialog.close()
		}
	}
}
