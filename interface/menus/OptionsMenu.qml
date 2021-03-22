import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: options_menu
	title: "Options"
	
	LargeButton {
		id: gameplay_options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: video_and_audio_options_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Gameplay Options"
		hotkey: "g"
		lua_command: "RunGameplayOptionsMenu();"
		
		onClicked: {
			menu_stack.push("GameplayOptionsMenu.qml")
		}
	}
	
	LargeButton {
		id: video_and_audio_options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Video and Audio Options"
		hotkey: "v"
		lua_command: "RunVideoOptionsMenu();"
		
		onClicked: {
			menu_stack.push("VideoAndAudioOptionsMenu.qml")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: video_and_audio_options_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
}
