import QtQuick 2.12
import QtQuick.Controls 2.12

TreeIconButton {
	readonly property var entry: model.modelData
	readonly property var entry_class: entry.unit_class ? entry.unit_class : (entry.upgrade_class ? entry.upgrade_class : null)
	
	button_x: entry_class.tech_tree_x
	button_y: entry_class.tech_tree_y
	button_width: entry_class.tech_tree_width
}
