import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."
import "../dialogs"

MenuBase {
	id: single_player_game_menu
	title: "Single Player Game"
	
	LargeButton {
		id: scenarios_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: legacy_quests_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Scenarios"
		hotkey: "s"
		
		onClicked: {
			menu_stack.push("CampaignTreeMenu.qml")
		}
	}
	
	LargeButton {
		id: legacy_quests_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: custom_game_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Legacy Quests"
		hotkey: "q"
		
		onClicked: {
			menu_stack.push("LegacyQuestsMenu.qml")
		}
	}
	
	LargeButton {
		id: custom_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Custom Game"
		hotkey: "u"
		
		onClicked: {
			wyrmgus.load_map_infos()
			menu_stack.push("CustomGameMenu.qml")
		}
	}
	
	LargeButton {
		id: load_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: custom_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: "Load Game"
		hotkey: "l"
		
		onClicked: {
			load_game_dialog.open()
		}
	}
	
	LargeButton {
		id: tech_tree_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: load_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: "Tech Tree"
		hotkey: "t"
		
		onClicked: {
			menu_stack.push("TechTreeMenu.qml")
		}
	}
	
	LargeButton {
		id: custom_heroes_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: tech_tree_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: "Custom Heroes"
		hotkey: "c"
		
		onClicked: {
			menu_stack.push("CustomHeroesMenu.qml")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: custom_heroes_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
	}
	
	LoadGameDialog {
		id: load_game_dialog
	}
}
