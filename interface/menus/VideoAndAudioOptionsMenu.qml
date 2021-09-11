import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	SoundEffectsSlider {
		id: sound_effects_slider
		anchors.left: music_slider.left
		anchors.bottom: music_slider.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
	}
	
	MusicSlider {
		id: music_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
	}
	
	LabeledRadioImageButton {
		id: scale_factor_radio_button
		anchors.left: music_slider.left
		anchors.top: music_slider.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "2x Scale Factor (restart required)"
		checked: wyrmgus.preferences.scale_factor > 1
		
		onCheckedChanged: {
			if (checked) {
				wyrmgus.preferences.scale_factor = 2
			} else {
				wyrmgus.preferences.scale_factor = 1
			}
		}
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: scale_factor_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
