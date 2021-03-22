import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "OK"
		hotkey: "o"
		lua_command: "wyr.preferences.EffectsVolume = GetEffectsVolume(); wyr.preferences.EffectsEnabled = IsEffectsEnabled(); wyr.preferences.MusicVolume = GetMusicVolume(); wyr.preferences.MusicEnabled = IsMusicEnabled(); if (fullscreen ~= Video.FullScreen) then ToggleFullScreen(); wyr.preferences.VideoFullScreen = Video.FullScreen; end; SavePreferences(); save_preferences(); video_options_menu:stop();"
		
		onClicked: {
			menu_stack.pop()
		}
	}
}
