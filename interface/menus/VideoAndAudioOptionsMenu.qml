import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	RadioImageButton {
		id: scale_factor_radio_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "2x Scale Factor (restart required)"
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: scale_factor_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		lua_command: "wyr.preferences.EffectsVolume = GetEffectsVolume(); wyr.preferences.EffectsEnabled = IsEffectsEnabled(); wyr.preferences.MusicVolume = GetMusicVolume(); wyr.preferences.MusicEnabled = IsMusicEnabled(); SavePreferences(); save_preferences(); video_options_menu:stop();"
		
		onClicked: {
			//wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
