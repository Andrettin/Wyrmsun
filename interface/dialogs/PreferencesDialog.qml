import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: preferences_dialog
	panel: 5
	title: "Preferences"
	
	RadioImageButton {
		id: show_hotkeys_radio_button
		anchors.left: game_speed_slider.left
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Show Hotkeys"
		checked: wyrmgus.preferences.show_hotkeys
		interface_style: preferences_dialog.interface_style
		
		onCheckedChanged: {
			wyrmgus.preferences.show_hotkeys = checked
		}
	}
	
	RadioImageButton {
		id: reverse_mousewheel_scrolling_radio_button
		anchors.left: game_speed_slider.left
		anchors.top: show_hotkeys_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Reverse Mousewheel Scrolling"
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
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Game Speed"
		min_text: "slow"
		max_text: "fast"
		from: 15
		to: 75
		value: wyrmgus.preferences.game_speed
		step_size: 5
		interface_style: preferences_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.game_speed = value
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: game_speed_slider.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: preferences_dialog.interface_style
		
		onClicked: {
			wyrmgus.preferences.save()
			preferences_dialog.close()
		}
	}
}
