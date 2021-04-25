import QtQuick 2.12
import QtQuick.Controls 2.12

IconButton {
	readonly property var tree_item: parent.parent
	readonly property var entry: model.modelData
	readonly property var civilization: entry.civilization ? entry.civilization : (entry.civilization_group ? entry.civilization_group : null)
	readonly property var faction: entry.faction ? entry.faction : (entry.default_faction ? entry.default_faction : null)
	readonly property string name: entry.full_name ? entry.full_name : entry.name
	readonly property int padding: 8 * wyrmgus.defines.scale_factor
	readonly property int padded_width: width + padding * 2
	readonly property int padded_height: height + padding * 2
	property int button_x: 0
	property int button_y: 0
	property int button_width: 1 //the width in buttons
	property bool has_tree_parent: false
	property int parent_button_x: 0
	property int parent_button_y: 0
	property int parent_button_width: 1
	readonly property int parent_x: parent_button_x * padded_width + (parent_button_width - 1) * padded_width / 2 + padding
	readonly property int parent_y: parent_button_y * padded_height + padding
	
	x: button_x * padded_width + (button_width - 1) * padded_width / 2 + padding
	y: button_y * padded_height + padding
	icon: entry.icon.identifier
	player_color: tree_item.player_color.length > 0 ? tree_item.player_color : (faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier))
	tooltip: name
	clip: false
	
	Rectangle {
		id: parent_line
		width: 2 * wyrmgus.defines.scale_factor
		height: padding
		color: "gray"
		x: parent.parent_x - parent.x + parent.width / 2 - (width / 2)
		y: parent.parent_y - parent.y + parent.height
		visible: parent.has_tree_parent
	}
	
	Rectangle {
		id: child_line
		width: 2 * wyrmgus.defines.scale_factor
		height: padding
		color: "gray"
		x: parent.width / 2 - (width / 2)
		y: -height
		visible: parent.has_tree_parent
	}
	
	Rectangle {
		id: horizontal_line
		width: get_base_width() + 2 * wyrmgus.defines.scale_factor
		height: 2 * wyrmgus.defines.scale_factor
		color: "gray"
		x: parent.width / 2 - (child_line.width / 2) - (parent.x > parent.parent_x ? get_base_width() : 0)
		y: -padding
		visible: parent.has_tree_parent && parent.x != parent.parent_x
		
		function get_base_width() {
			if (parent.x < parent.parent_x) {
				return parent.parent_x - parent.x
			}
			
			if (parent.x > parent.parent_x) {
				return parent.x - parent.parent_x
			}
			
			return 0
		}
	}
}
