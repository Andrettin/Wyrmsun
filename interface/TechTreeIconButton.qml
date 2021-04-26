import QtQuick 2.12
import QtQuick.Controls 2.12

TreeIconButton {
	readonly property var entry: model.modelData
	readonly property var entry_class: entry.unit_class ? entry.unit_class : (entry.upgrade_class ? entry.upgrade_class : null)
	readonly property var entry_parent_class: entry_class ? entry_class.tech_tree_parent : null
	
	button_x: entry_class.tech_tree_x
	button_y: entry_class.tech_tree_y
	button_width: entry_class.tech_tree_width
	has_tree_parent: entry_class !== null && entry_class.tech_tree_parent !== null
	parent_button_x: entry_parent_class ? entry_parent_class.tech_tree_x : 0
	parent_button_y: entry_parent_class ? entry_parent_class.tech_tree_y : 0
	parent_button_width: entry_parent_class ? entry_parent_class.tech_tree_width : 1
	
	onClicked: {
		menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
			entry: model.modelData
		})
	}
}
