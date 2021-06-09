import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: legacy_quests_menu
	title: "Legacy Quests"
	
	LargeButton {
		id: earth_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: nidavellir_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Earth"
		hotkey: "e"
		lua_command: "RunQuestMenu(\"earth\");"
		
		onClicked: {
			menu_stack.push("LegacyQuestsWorldMenu.qml", {
				world: "earth"
			})
		}
	}
	
	LargeButton {
		id: nidavellir_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Nidavellir"
		hotkey: "n"
		lua_command: "RunQuestMenu(\"nidavellir\");"
		
		onClicked: {
			menu_stack.push("LegacyQuestsWorldMenu.qml", {
				world: "nidavellir"
			})
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
	}
}
