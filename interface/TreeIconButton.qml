import QtQuick 2.12
import QtQuick.Controls 2.12

IconButton {
	readonly property var icon_button_tree: parent.parent
	readonly property var civilization: model.modelData.civilization ? model.modelData.civilization : (model.modelData.civilization_group ? model.modelData.civilization_group : null)
	readonly property var faction: model.modelData.faction ? model.modelData.faction : (model.modelData.default_faction ? model.modelData.default_faction : null)
	readonly property string name: model.modelData.full_name ? model.modelData.full_name : model.modelData.name
	readonly property int padded_width: width + 8 * wyrmgus.defines.scale_factor * 2
	readonly property int padded_height: height + 8 * wyrmgus.defines.scale_factor * 2
	property int button_x: 0
	property int button_y: 0
	property int button_width: 1 //the width in buttons
	
	x: button_x * padded_width + (button_width - 1) * padded_width / 2 + 8 * wyrmgus.defines.scale_factor
	y: button_y * padded_height + 8 * wyrmgus.defines.scale_factor
	icon: model.modelData.icon.identifier
	player_color: faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
	tooltip: name
}
