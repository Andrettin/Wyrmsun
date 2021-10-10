import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: sound_options_dialog
	panel: 5
	title: "Sound Options"
	
	SoundEffectsSlider {
		id: sound_effects_slider
		anchors.left: music_slider.left
		anchors.bottom: music_slider.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		interface_style: sound_options_dialog.interface_style
	}
	
	MusicSlider {
		id: music_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		interface_style: sound_options_dialog.interface_style
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: sound_options_dialog.interface_style
		
		onClicked: {
			wyrmgus.preferences.save()
			sound_options_dialog.close()
		}
	}
}
