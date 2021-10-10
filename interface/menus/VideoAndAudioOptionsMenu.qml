import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	NormalText {
		id: scale_factor_label
		text: "Scale Factor (restart required):"
		anchors.left: scale_factor_dropdown.left
		anchors.bottom: scale_factor_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: scale_factor_dropdown
		anchors.left: sound_effects_slider.left
		anchors.bottom: sound_effects_slider.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		width: 55 * wyrmgus.defines.scale_factor
		model: ["1x", "1.5x", "2x"]
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.scale_factor_string + "x")
		}
		
		onSelectedEntryChanged: {
			wyrmgus.preferences.scale_factor_string = selectedEntry.substring(0, selectedEntry.length - 1)
		}
	}
	
	SoundEffectsSlider {
		id: sound_effects_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
	}
	
	MusicSlider {
		id: music_slider
		anchors.left: sound_effects_slider.left
		anchors.top: sound_effects_slider.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: music_slider.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
