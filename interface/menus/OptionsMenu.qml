import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: options_menu
	title: qsTr("Options")
	
	LargeButton {
		id: gameplay_options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: video_and_audio_options_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Gameplay Options")
		hotkey: "g"
		
		onClicked: {
			menu_stack.push("GameplayOptionsMenu.qml")
		}
	}
	
	LargeButton {
		id: video_and_audio_options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Video and Audio Options")
		hotkey: "v"
		
		onClicked: {
			menu_stack.push("VideoAndAudioOptionsMenu.qml")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: video_and_audio_options_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
	}
}
