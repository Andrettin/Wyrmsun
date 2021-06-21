import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: multiplayer_game_menu
	title: "Multiplayer Game"
	
	NormalText {
		id: nickname_label
		anchors.bottom: nickname_text_field.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		anchors.left: join_game_button.left
		text: "Nickname:"
	}
	
	CustomTextField {
		id: nickname_text_field
		anchors.bottom: join_game_button.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: join_game_button.left
		anchors.right: join_game_button.right
		text: wyrmgus.preferences.local_player_name
	}
	
	LargeButton {
		id: join_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Join Game"
		hotkey: "j"
		lua_command: "RunJoinIpMenu();"
		
		onClicked: {
			if (wyrmgus.preferences.local_player_name !== nickname_text_field.text) {
				wyrmgus.preferences.local_player_name = nickname_text_field.text
				wyrmgus.preferences.save()
			}
		}
	}
	
	LargeButton {
		id: create_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: join_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Create Game"
		hotkey: "c"
		lua_command: "RunCreateMultiGameMenu();"
		
		onClicked: {
			if (wyrmgus.preferences.local_player_name !== nickname_text_field.text) {
				wyrmgus.preferences.local_player_name = nickname_text_field.text
				wyrmgus.preferences.save()
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: create_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "ExitNetwork1();"
	}
}
