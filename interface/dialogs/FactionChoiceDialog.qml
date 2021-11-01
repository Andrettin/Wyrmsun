import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: faction_choice_dialog
	panel: 1
	title: "Choose Your Faction"
	
	property var factions: []
	readonly property var selected_faction: faction_dropdown.selectedEntry
	
	Dropdown {
		id: faction_dropdown
		anchors.top: title_item.bottom
		anchors.topMargin: 24 * wyrmgus.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		width: 150 * wyrmgus.scale_factor
		model: faction_choice_dialog.factions
		interface_style: faction_choice_dialog.interface_style
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	ScrollableTextArea {
		id: faction_text_label
		anchors.top: faction_dropdown.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: selected_faction ? format_text("Default Color: " + selected_faction.color.name + (selected_faction.upgrade ? ("\n\nEffects: " + selected_faction.upgrade.effects_string) : "")) : ""
	}
	
	LargeButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "OK"
		hotkey: "o"
		interface_style: faction_choice_dialog.interface_style
		
		onClicked: {
			wyrmgus.this_player.set_faction_async(faction_choice_dialog.selected_faction)
			faction_choice_dialog.close()
		}
	}
}
