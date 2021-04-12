import QtQuick 2.12
import QtQuick.Controls 2.12

IconButton {
	readonly property int button_x: index % Math.floor(button_area_item.width / width)
	readonly property int button_y: Math.floor(index / Math.floor(button_area_item.width / width))
	readonly property int x_offset: (button_area_item.width - (Math.floor(button_area_item.width / width) * width)) / 2
	readonly property int y_offset: (button_area_item.height - (Math.floor(button_area_item.height / height) * height)) / 2
	readonly property var civilization: model.modelData.civilization ? model.modelData.civilization : (model.modelData.civilization_group ? model.modelData.civilization_group : null)
	readonly property var faction: model.modelData.faction ? model.modelData.faction : (model.modelData.default_faction ? model.modelData.default_faction : null)
	readonly property var pantheon: model.modelData.pantheon
	readonly property var civilization_name: civilization && civilization !== wyrmgus.defines.neutral_civilization ? civilization.name : (pantheon ? pantheon.name : "")
	readonly property string faction_tooltip: faction ? (": " + faction.name) : ""
	readonly property string civilization_tooltip: civilization_name.length > 0 ? (" (" + civilization_name + faction_tooltip + ")") : ""
	readonly property string name: model.modelData.full_name ? model.modelData.full_name : model.modelData.name
	
	visible: model.modelData.icon != null
	x: button_x * width + x_offset
	y: button_y * height + y_offset
	icon: model.modelData.icon.identifier
	player_color: faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
	tooltip: name + civilization_tooltip
	
	onClicked: {
		menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
			entry: model.modelData
		})
	}
}
