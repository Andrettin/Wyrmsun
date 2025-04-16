import QtQuick
import QtQuick.Controls

ToolTip {
	id: tooltip
	z: 100
	delay: 1000
	palette.toolTipText: "white"
	font.family: berenika_font.name
	font.pixelSize: 12 * wyrmgus.scale_factor
	background: Rectangle {
		color: "black"
		border.color: "gray"
		border.width: 1
		radius: 5 * wyrmgus.scale_factor
	}
	contentItem: Text {
		text: tooltip.text
		font: tooltip.font
		wrapMode: Text.WordWrap
		color: tooltip.palette.toolTipText
		textFormat: Text.RichText
		width: Math.min(contentWidth, 512 * wyrmgus.scale_factor)
	}
	onOpened: {
		if (tooltip_manager.tooltip_y_override !== 0) {
			y = tooltip_manager.tooltip_y_override
			tooltip_manager.tooltip_y_override = 0
		}
	}
}
