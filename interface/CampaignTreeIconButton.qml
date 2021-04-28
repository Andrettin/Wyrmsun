import QtQuick 2.12
import QtQuick.Controls 2.12

TreeIconButton {
	readonly property var entry: model.modelData
	readonly property var entry_parent: entry.tree_parent
	
	button_x: entry.tree_x
	button_y: entry.tree_y
	button_width: entry.tree_width
	has_tree_parent: entry !== null && entry.tree_parent !== null
	parent_button_x: entry_parent ? entry_parent.tree_x : 0
	parent_button_y: entry_parent ? entry_parent.tree_y : 0
	parent_button_width: entry_parent ? entry_parent.tree_width : 1
	parent_name: entry_parent ? entry_parent.name : ""
	tree_line_visible: entry.tree_line_visible
	grayscale: entry.quest && entry.quest.completed
	transparent: !entry.available
	disabled: !entry.available
	
	onClicked: {
		if (entry.available) {
			menu_stack.push("menus/CampaignMenu.qml", {
				campaign: entry
			})
		}
	}
}
