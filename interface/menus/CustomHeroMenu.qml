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
		anchors.bottom: previous_menu_button_item.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Delete Custom Hero"
		hotkey: "d"
		
		onClicked: {
			delete_custom_hero_dialog.custom_hero = entry
			delete_custom_hero_dialog.open()
		}
	}
	
	DeleteCustomHeroDialog {
		id: delete_custom_hero_dialog
	}
}
