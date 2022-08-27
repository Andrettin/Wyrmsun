import QtQuick 2.12
import QtQuick.Controls 2.12

ButtonBase {
	id: button
	button_type: "large_button"
	text_font_size: text_metrics.width < inner_width ? 12 * wyrmgus.scale_factor : (inner_width * 12 * wyrmgus.scale_factor / text_metrics.width)
	
	readonly property int inner_width: width - 8 * wyrmgus.scale_factor //the width of the part of the button where text should appear
	
	TextMetrics {
		id: text_metrics
		text: button.text
		font.family: berenika_font.name
		font.pixelSize: 12 * wyrmgus.scale_factor
	}
}
