import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: button_tree_menu
	
	property var entries: []
	property var icon_button_component: null
	
	IconButtonTree {
		id: button_tree
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		icon_button_component: button_tree_menu.icon_button_component
		entries: button_tree_menu.entries
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
}
