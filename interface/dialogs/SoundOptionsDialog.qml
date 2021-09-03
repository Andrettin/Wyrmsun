import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: sound_options_dialog
	panel: 5
	title: "Sound Options"
	
	NormalText {
		id: sound_effects_volume_label
		text: "Sound Effects Volume"
		anchors.bottom: sound_effects_volume_slider.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		anchors.left: sound_effects_volume_slider.left
	}
	
	CustomSlider { //FIXME: disable if sound effects are turned off
		id: sound_effects_volume_slider
		anchors.left: music_volume_slider.left
		anchors.bottom: sound_effects_volume_min_label.top
		anchors.bottomMargin: 4 * wyrmgus.defines.scale_factor
		from: 0
		to: 255
		value: wyrmgus.preferences.sound_effects_volume
		step_size: 25.5
		interface_style: sound_options_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.sound_effects_volume = value
		}
	}
	
	RadioImageButton {
		id: sound_effects_radio_button
		anchors.left: sound_effects_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: sound_effects_volume_slider.verticalCenter
		text: "Enabled"
		checked: wyrmgus.preferences.sound_effects_enabled
		interface_style: sound_options_dialog.interface_style
		
		onCheckedChanged: {
			wyrmgus.preferences.sound_effects_enabled = checked
		}
	}
	
	TinyText {
		id: sound_effects_volume_min_label
		text: "min"
		anchors.bottom: music_volume_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: sound_effects_volume_slider.left
	}
	
	TinyText {
		id: sound_effects_volume_max_label
		text: "max"
		anchors.top: sound_effects_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.right: sound_effects_volume_slider.right
	}
	
	NormalText {
		id: music_volume_label
		text: "Music Volume"
		anchors.bottom: music_volume_slider.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		anchors.left: music_volume_slider.left
	}
	
	CustomSlider { //FIXME: disable if music is turned off
		id: music_volume_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: -(music_radio_button.anchors.leftMargin + music_radio_button.width) / 2
		anchors.verticalCenter: parent.verticalCenter
		from: 0
		to: 255
		value: wyrmgus.preferences.music_volume
		step_size: 25.5
		interface_style: sound_options_dialog.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.music_volume = value
		}
	}
	
	RadioImageButton {
		id: music_radio_button
		anchors.left: music_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: music_volume_slider.verticalCenter
		text: "Enabled"
		checked: wyrmgus.preferences.music_enabled
		interface_style: sound_options_dialog.interface_style
		
		onCheckedChanged: {
			wyrmgus.preferences.music_enabled = checked
		}
	}
	
	TinyText {
		id: music_volume_min_label
		text: "min"
		anchors.top: music_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.left: music_volume_slider.left
	}
	
	TinyText {
		id: music_volume_max_label
		text: "max"
		anchors.top: music_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.right: music_volume_slider.right
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: sound_options_dialog.interface_style
		
		onClicked: {
			wyrmgus.preferences.save()
			sound_options_dialog.close()
		}
	}
}
