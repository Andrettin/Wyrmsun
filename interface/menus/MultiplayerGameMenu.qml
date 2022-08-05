import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."
import "../dialogs"

MenuBase {
	id: multiplayer_game_menu
	title: "Multiplayer Game"
	
	Pane {
		anchors.fill: parent
		focusPolicy: Qt.ClickFocus
		background: null
	}
	
	NormalText {
		id: nickname_label
		anchors.bottom: nickname_text_field.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		anchors.left: join_game_button.left
		text: qsTr("Nickname") + ":"
	}
	
	CustomTextField {
		id: nickname_text_field
		anchors.bottom: join_game_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: join_game_button.left
		anchors.right: join_game_button.right
		text: wyrmgus.preferences.local_player_name
	}
	
	LargeButton {
		id: join_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Join Game")
		hotkey: "j"
		
		onClicked: {
			if (wyrmgus.preferences.local_player_name !== nickname_text_field.text) {
				wyrmgus.preferences.local_player_name = nickname_text_field.text
				wyrmgus.preferences.save()
			}
			
			join_game_dialog.open()
		}
	}
	
	LargeButton {
		id: create_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: join_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Create Game")
		hotkey: "c"
		
		onClicked: {
			if (wyrmgus.preferences.local_player_name !== nickname_text_field.text) {
				wyrmgus.preferences.local_player_name = nickname_text_field.text
				wyrmgus.preferences.save()
			}
			
			wyrmgus.load_map_infos()
			menu_stack.push("CreateMultiplayerGameMenu.qml")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: create_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		lua_command: "ExitNetwork1();"
	}
	
	JoinGameDialog {
		id: join_game_dialog
	}
	
	JoinGameConnectingDialog {
		id: join_game_connecting_dialog
	}
	
	GenericDialog {
		id: error_dialog
		title: "Error"
	}
}
