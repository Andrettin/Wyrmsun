import QtQuick 2.12
import QtQuick.Controls 2.12

NamedIconButton {
	z: -button_y //make it so buttons farther below are on a lower Z level, so that their lines aren't drawn over upper buttons' text
	player_color: tree_item.player_color
	
	readonly property var tree_item: parent.parent
	property bool has_tree_parent: false
	property int parent_button_x: 0
	property int parent_button_y: 0
	property int parent_button_width: 1
	readonly property int parent_x: parent_button_x * width + (parent_button_width - 1) * width / 2 + horizontal_padding
	readonly property int parent_y: parent_button_y * height + vertical_padding
	property string parent_name: ""
	readonly property int parent_text_height: parent_text_height_reference.contentHeight + 2 * wyrmgus.defines.scale_factor * 2
	property bool tree_line_visible: true
	
	TinyText {
		id: parent_text_height_reference
		opacity: 0 //make it 100% transparent, this is for calculating the parent text height only, it shouldn't be visible
		text: parent.parent_name
		width: parent.width
		wrapMode: Text.WordWrap
		horizontalAlignment: Text.AlignHCenter
	}
	
	Rectangle {
		id: parent_line
		width: 2 * wyrmgus.defines.scale_factor
		height: vertical_padding - parent_text_height
		color: "gray"
		x: parent.parent_x - parent.x + parent.width / 2 - (width / 2)
		y: parent.parent_y - parent.y + parent.height - vertical_padding + parent_text_height
		visible: parent.has_tree_parent && parent.tree_line_visible
	}
	
	Rectangle {
		id: child_line
		width: 2 * wyrmgus.defines.scale_factor
		height: vertical_padding + (parent_line.height < 0 ? parent_line.height : 0)
		color: "gray"
		x: parent.width / 2 - (width / 2)
		y: 0 - (parent_line.height < 0 ? parent_line.height : 0)
		visible: parent.has_tree_parent && parent.tree_line_visible
	}
	
	Rectangle {
		id: horizontal_line
		width: get_base_width() + 2 * wyrmgus.defines.scale_factor
		height: 2 * wyrmgus.defines.scale_factor
		color: "gray"
		x: parent.width / 2 - (child_line.width / 2) - (parent.x > parent.parent_x ? get_base_width() : 0)
		y: 0
		visible: parent.has_tree_parent && parent.x != parent.parent_x && parent.tree_line_visible
		
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
