import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: delete_custom_hero_dialog
	panel: 4
	title: custom_hero ? ("Delete " + custom_hero.full_name) : ""
	
	property var custom_hero: null
	
	NormalText {
		id: description_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		text: "Are you sure? This cannot be undone."
	}
	
	SmallButton {
		id: yes_button
		anchors.left: parent.left
		anchors.leftMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Yes"
		hotkey: "y"
		lua_command: custom_hero ? "DeleteCustomHero(\"" + custom_hero.identifier + "\");" : ""
		
		onClicked: {
			delete_custom_hero_dialog.close()
		}
	}
	
	SmallButton {
		id: no_button
		anchors.right: parent.right
		anchors.rightMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "No"
		hotkey: "n"
		
		onClicked: {
			delete_custom_hero_dialog.close()
		}
	}
}
