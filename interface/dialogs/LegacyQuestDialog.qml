import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: legacy_quest_dialog
	panel: 5
	title: quest ? quest.name : ""
	
	property var quest: null
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		icon: quest && quest.icon ? quest.icon.identifier : ""
		player_color: quest && quest.player_color ? quest.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	}
	
	ScrollableTextArea {
		id: description_label
		anchors.top: icon_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: play_quest_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: quest ? quest.description : ""
	}
	
	LargeButton {
		id: play_quest_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: close_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Play Quest"
		hotkey: "p"
		lua_command: quest ? "SetCurrentQuest(\"" + quest.identifier + "\"); GetMapInfo(GetQuestData(\"" + quest.identifier + "\", \"Map\")); GameSettings.Difficulty = " + wyrmgus.preferences.get_difficulty_index() + "; mapname = GetQuestData(\"" + quest.identifier + "\", \"Map\"); RunMap(mapname);" : ""
		
		onClicked: {
			legacy_quest_dialog.close()
		}
	}
	
	LargeButton {
		id: close_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Close"
		hotkey: "c"
		
		onClicked: {
			legacy_quest_dialog.close()
		}
	}
}
