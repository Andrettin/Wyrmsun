import QtQuick 2.12
import QtQuick.Controls 2.12

IconButton {
	readonly property int button_x: index % Math.floor(button_area_item.width / width)
	readonly property int button_y: Math.floor(index / Math.floor(button_area_item.width / width))
	readonly property int x_offset: (button_area_item.width - (Math.floor(button_area_item.width / width) * width)) / 2
	readonly property int y_offset: (button_area_item.height - (Math.floor(button_area_item.height / height) * height)) / 2
	
	visible: model.modelData.icon != null
	x: button_x * width + x_offset
	y: button_y * height + y_offset
}
