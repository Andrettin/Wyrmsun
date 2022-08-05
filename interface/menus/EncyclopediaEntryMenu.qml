import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_entry_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: entry_name
	background: entry_background
	
	property var entry: null
	readonly property var is_dynasty: entry && entry.class_name === "wyrmgus::dynasty" ? true : false
	property var text_area_bottom_anchor: dynastic_tree_button.visible ? dynastic_tree_button.top : previous_menu_button_item.top
	readonly property string entry_name: entry.full_name ? entry.full_name : entry.name
	readonly property var entry_civilization: (entry.civilization ? entry.civilization : (entry.civilization_group ? entry.civilization_group : null))
	readonly property var entry_faction: entry.faction ? entry.faction : (entry.default_faction ? entry.default_faction : null)
	readonly property string entry_background: entry.encyclopedia_background_file && entry.encyclopedia_background_file.length > 0 ? entry.encyclopedia_background_file : (entry_civilization && entry_civilization.encyclopedia_background_file && entry_civilization.encyclopedia_background_file.length > 0 ? entry_civilization.encyclopedia_background_file : wyrmgus.defines.default_menu_background_file)
	readonly property var previous_menu_button_item: previous_menu_button
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		icon: entry.icon ? entry.icon.identifier : ""
		player_color: entry_faction ? entry_faction.color.identifier : (entry_civilization && entry_civilization.default_color ? entry_civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
		visible: entry.icon ? true : false
	}
	
	ScrollableTextArea {
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.top: entry.icon ? icon_button.bottom : parent.title_element.bottom
		anchors.topMargin: (entry.icon ? 16 : 32) * wyrmgus.scale_factor
		anchors.bottom: text_area_bottom_anchor
		anchors.bottomMargin: 32 * wyrmgus.scale_factor
		text: entry.encyclopedia_text
	}
	
	LargeButton {
		id: dynastic_tree_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button_item.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Dynastic Tree")
		hotkey: "d"
		visible: is_dynasty && entry.dynastic_tree_characters.length > 0
		
		onClicked: {
			menu_stack.push("DynasticTreeMenu.qml", {
				dynasty: entry
			})
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
}
