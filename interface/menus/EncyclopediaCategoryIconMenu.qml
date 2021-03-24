import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_category_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: "Encyclopedia: " + category_name
	
	property string category_name: ""
	property var entries: []
	
	Flickable {
		id: button_area
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		contentWidth: contentItem.childrenRect.width
		contentHeight: contentItem.childrenRect.height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		
		Repeater {
			id: button_table
			model: encyclopedia_category_menu.entries
			
			IconButton {
				readonly property int button_x: index % Math.floor(button_area.width / width)
				readonly property int button_y: Math.floor(index / Math.floor(button_area.width / width))
				readonly property int x_offset: (button_area.width - (Math.floor(button_area.width / width) * width)) / 2
				readonly property int y_offset: (button_area.height - (Math.floor(button_area.height / height) * height)) / 2
				readonly property string faction_tooltip: model.modelData.faction ? (": " + model.modelData.faction.name) : ""
				readonly property string civilization_tooltip: model.modelData.civilization ? (" (" + model.modelData.civilization.name + faction_tooltip + ")") : ""
				
				visible: model.modelData.icon != null
				x: button_x * width + x_offset
				y: button_y * height + y_offset
				icon: model.modelData.icon.identifier
				tooltip: model.modelData.name + civilization_tooltip
				lua_command: "OpenEncyclopediaUnitEntry(\"" + model.modelData.identifier + "\", \"units\");"
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
