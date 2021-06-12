import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."
import "../dialogs"

EncyclopediaEntryMenu {
	id: custom_hero_menu
	text_area_bottom_anchor: delete_custom_hero_button.top
	
	LargeButton {
		id: delete_custom_hero_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: change_custom_hero_description_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Change Description"
		hotkey: "c"
		
		onClicked: {
			change_custom_hero_description_dialog.custom_hero = entry
			change_custom_hero_description_dialog.open()
		}
	}
	
	LargeButton {
		id: change_custom_hero_description_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button_item.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Delete Custom Hero"
		hotkey: "d"
		
		onClicked: {
			delete_custom_hero_dialog.custom_hero = entry
			delete_custom_hero_dialog.open()
		}
	}
	
	ChangeCustomHeroDescriptionDialog {
		id: change_custom_hero_description_dialog
	}
	
	DeleteCustomHeroDialog {
		id: delete_custom_hero_dialog
	}
}
