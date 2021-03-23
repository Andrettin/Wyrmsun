import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	RadioImageButton {
		id: fullscreen_radio_button
		anchors.left: scale_factor_radio_button.left
		anchors.verticalCenter: parent.verticalCenter
		text: "Full Screen"
		checked: window.visibility == Window.FullScreen
		
		onClicked: {
			if (window.visibility == Window.FullScreen) {
				window.visibility = Window.Maximized
			} else {
				window.visibility = Window.FullScreen
			}
		}
	}
	
	RadioImageButton {
		id: scale_factor_radio_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: fullscreen_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "2x Scale Factor (restart required)"
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: scale_factor_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		lua_command: "wyr.preferences.EffectsVolume = GetEffectsVolume(); wyr.preferences.EffectsEnabled = IsEffectsEnabled(); wyr.preferences.MusicVolume = GetMusicVolume(); wyr.preferences.MusicEnabled = IsMusicEnabled(); if (fullscreen ~= Video.FullScreen) then ToggleFullScreen(); wyr.preferences.VideoFullScreen = Video.FullScreen; end; SavePreferences(); save_preferences(); video_options_menu:stop();"
		
		onClicked: {
			wyrmgus.preferences.fullscreen = fullscreen_radio_button.checked
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
