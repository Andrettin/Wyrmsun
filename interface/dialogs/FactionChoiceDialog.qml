import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: faction_choice_dialog
	panel: 1
	title: "Choose Your Faction"
	
	property var factions: []
	
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
	
	LargeButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "OK"
		hotkey: "o"
		interface_style: faction_choice_dialog.interface_style
		
		onClicked: {
			faction_choice_dialog.close()
		}
	}
}
