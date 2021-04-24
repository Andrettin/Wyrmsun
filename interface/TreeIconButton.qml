import QtQuick 2.12
import QtQuick.Controls 2.12

IconButton {
	readonly property var icon_button_tree: parent.parent
	readonly property int x_offset: (icon_button_tree.width - (Math.floor(icon_button_tree.width / width) * width)) / 2
	readonly property int y_offset: (icon_button_tree.height - (Math.floor(icon_button_tree.height / height) * height)) / 2
	readonly property var civilization: model.modelData.civilization ? model.modelData.civilization : (model.modelData.civilization_group ? model.modelData.civilization_group : null)
	readonly property var faction: model.modelData.faction ? model.modelData.faction : (model.modelData.default_faction ? model.modelData.default_faction : null)
	readonly property string name: model.modelData.full_name ? model.modelData.full_name : model.modelData.name
	property int button_x: 0
	property int button_y: 0
	
	x: button_x * width + x_offset
	y: button_y * height + y_offset
	icon: model.modelData.icon.identifier
	player_color: faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
	tooltip: name
}
