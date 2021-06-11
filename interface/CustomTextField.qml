import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
	id: custom_text_field
	color: "white"
	font.family: berenika_font.name
	font.pixelSize: 12 * wyrmgus.defines.scale_factor
	
	background: Rectangle {
		id: text_background
		color: "black"
		radius: 5
		opacity: 0.5
	}
}
