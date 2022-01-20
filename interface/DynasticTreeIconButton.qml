import QtQuick 2.12
import QtQuick.Controls 2.12

GenericTreeIconButton {
	parent_name: entry_parent ? entry_parent.full_name : ""
	
	onClicked: {
		menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
			entry: model.modelData
		})
	}
}
