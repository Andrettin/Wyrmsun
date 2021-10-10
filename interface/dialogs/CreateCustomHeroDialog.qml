import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: create_custom_hero_dialog
	panel: 5
	title: "Create Custom Hero"
	
	readonly property var civilization: civilization_dropdown.selectedEntry
	readonly property var unit_type: unit_type_dropdown.selectedEntry
	readonly property var trait: trait_dropdown.selectedEntry
	readonly property var variation: variation_dropdown.selectedEntry
	readonly property var variation_identifier: variation !== null ? variation.identifier : ""
	
	onCivilizationChanged: {
		if (civilization !== null) {
			name_text_field.text = civilization.generate_male_personal_name()
		}
	}
	
	NormalText {
		id: name_label
		anchors.top: title_item.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Name:"
	}
	
	CustomTextField {
		id: name_text_field
		anchors.verticalCenter: name_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: generate_name_button.left
		anchors.rightMargin: 8 * wyrmgus.scale_factor
	}
	
	SmallButton {
		id: generate_name_button
		anchors.verticalCenter: name_label.verticalCenter
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: "Generate"
		hotkey: "g"
		
		onClicked: {
			name_text_field.text = civilization.generate_male_personal_name()
		}
	}
	
	NormalText {
		id: surname_label
		anchors.top: name_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Surname:"
	}
	
	CustomTextField {
		id: surname_text_field
		anchors.verticalCenter: surname_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
	}
	
	NormalText {
		id: civilization_label
		anchors.top: surname_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Civilization:"
	}
	
	Dropdown {
		id: civilization_dropdown
		anchors.verticalCenter: civilization_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: wyrmgus.get_playable_civilizations()
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: unit_type_label
		anchors.top: civilization_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Unit Type:"
	}
	
	Dropdown {
		id: unit_type_dropdown
		anchors.verticalCenter: unit_type_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: civilization !== null ? civilization.get_custom_hero_unit_types() : []
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: trait_label
		anchors.top: unit_type_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Trait:"
	}
	
	Dropdown {
		id: trait_dropdown
		anchors.verticalCenter: trait_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: unit_type !== null ? unit_type.traits : []
		
		function get_entry_name(entry) {
			return entry.name + ": " + entry.get_upgrade_effects_qstring()
		}
	}
	
	NormalText {
		id: variation_label
		anchors.top: trait_label.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		text: "Variation:"
	}
	
	Dropdown {
		id: variation_dropdown
		anchors.verticalCenter: variation_label.verticalCenter
		anchors.left: civilization_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		model: unit_type !== null ? unit_type.get_custom_hero_variations_qvariant_list() : []
		
		function get_entry_name(entry) {
			if (entry.name.length > 0) {
				return entry.name
			}
			
			return entry.identifier
		}
	}
	
	SmallButton {
		id: create_button
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: "Create"
		hotkey: "t"
		
		onClicked: {
			if (name_text_field.text.length === 0) {
				error_dialog.text = "The hero's name cannot be empty."
				error_dialog.open()
				return
			} else if (!wyrmgus.is_name_valid_for_custom_hero(name_text_field.text)) {
				error_dialog.text = "The custom hero's name is invalid."
				error_dialog.open()
				return
			}
			
			if (surname_text_field.text.length > 0 && !wyrmgus.is_name_valid_for_custom_hero(surname_text_field.text)) {
				error_dialog.text = "The custom hero's surname is invalid."
				error_dialog.open()
				return
			}
			
			wyrmgus.create_custom_hero(name_text_field.text, surname_text_field.text, civilization, unit_type, trait, variation_identifier)
			create_custom_hero_dialog.close()
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: "Cancel"
		hotkey: "c"
		
		onClicked: {
			create_custom_hero_dialog.close()
		}
	}
}
