import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

LargeButton {
	readonly property boundary_width: width + 8 * wyrmgus.defines.scale_factor
	readonly property boundary_height: height + 8 * wyrmgus.defines.scale_factor
	readonly property int button_x: index % Math.floor(button_area_item.width / boundary_width)
	readonly property int button_y: Math.floor(index / Math.floor(button_area_item.width / boundary_width))
	readonly property int x_offset: (button_area_item.width - (Math.floor(button_area_item.width / boundary_width) * boundary_width)) / 2
	readonly property int y_offset: (button_area_item.height - (Math.floor(button_area_item.height / boundary_height) * boundary_height)) / 2
	
	x: button_x * boundary_width + x_offset
	y: button_y * boundary_height + y_offset
	text: model.modelData.name
	lua_command: "OpenEncyclopediaUnitEntry(\"" + model.modelData.identifier + "\", \"" + category + "\");"
}
