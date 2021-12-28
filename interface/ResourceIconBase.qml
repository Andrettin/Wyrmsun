import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	id: resource_icon
	source: icon.length > 0 ? ("image://resource_icon/" + icon) : "image://empty/"
	cache: false
	visible: !wyrmgus.map_editor.running
	ToolTip.visible: mouse_area.containsMouse && tooltip.length > 0
	ToolTip.delay: 1000
	ToolTip.text: resource_icon.tooltip
	
	property var icon: ""
	property string tooltip: ""
	
	MouseArea {
		id: mouse_area
		anchors.fill: resource_icon
		hoverEnabled: true
		visible: resource_icon.tooltip.length > 0
		enabled: resource_icon.tooltip.length > 0
		onEntered: {
			//display the tooltip further down so that the cursor isn't on top of it
			tooltip_manager.tooltip_y_override = 40 * wyrmgus.scale_factor
		}
		onExited: {
			tooltip_manager.tooltip_y_override = 0
		}
	}
}
