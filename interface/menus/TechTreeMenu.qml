import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: tech_tree_menu
	title: "Tech Tree"
	
	Dropdown {
		id: civilization_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		width: 125 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_playable_civilizations()
		
		onSelectedEntryChanged: {
		}
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	IconButtonTree {
		readonly property var civilization: civilization_dropdown.selectedEntry
		id: tech_tree
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: civilization_dropdown.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		icon_button_component: Qt.createComponent("../TechTreeIconButton.qml")
		entries: civilization.get_tech_tree_entries()
		player_color: civilization.default_color ? civilization.default_color.identifier : ""
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
