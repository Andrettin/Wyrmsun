import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: create_custom_hero_dialog
	panel: 5
	title: "Create Custom Hero"
	
	readonly property var civilization: civilization_dropdown.selectedEntry
	
	onCivilizationChanged: {
		name_text_field.text = civilization.generate_male_personal_name()
	}
	
	NormalText {
		id: name_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		text: "Name:"
	}
	
	CustomTextField {
		id: name_text_field
		anchors.verticalCenter: name_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		width: 224 * wyrmgus.defines.scale_factor
	}
	
	NormalText {
		id: surname_label
		anchors.top: name_label.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		text: "Surname:"
	}
	
	CustomTextField {
		id: surname_text_field
		anchors.verticalCenter: surname_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		width: 224 * wyrmgus.defines.scale_factor
	}
	
	NormalText {
		id: civilization_label
		anchors.top: surname_label.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		text: "Civilization:"
	}
	
	Dropdown {
		id: civilization_dropdown
		anchors.verticalCenter: civilization_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		width: 224 * wyrmgus.defines.scale_factor
		model: wyrmgus.get_playable_civilizations()
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	SmallButton {
		id: create_button
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Create"
		hotkey: "t"
		
		onClicked: {
			create_custom_hero_dialog.close()
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Cancel"
		hotkey: "c"
		
		onClicked: {
			create_custom_hero_dialog.close()
		}
	}
}
