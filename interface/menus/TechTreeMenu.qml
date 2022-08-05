import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: tech_tree_menu
	title: qsTr("Tech Tree")
	
	Dropdown {
		id: civilization_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		width: 125 * wyrmgus.scale_factor
		model: wyrmgus.get_playable_civilizations()
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	IconButtonTree {
		id: tech_tree
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.top: civilization_dropdown.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		icon_button_component: Qt.createComponent("../TechTreeIconButton.qml")
		entries: civilization.get_tech_tree_entries()
		player_color: civilization.default_color ? civilization.default_color.identifier : ""
		
		readonly property var civilization: civilization_dropdown.selectedEntry
		
		function get_class_entry(entry_class) {
			for (var i = 0; i < tech_tree.entries.length; ++i) {
				var entry = tech_tree.entries[i]
				
				if (entry.unit_class && entry.unit_class == entry_class) {
					return entry
				}
				
				if (entry.upgrade_class && entry.upgrade_class == entry_class) {
					return entry
				}
			}
			
			return null
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
}
