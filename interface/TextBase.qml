import QtQuick
import QtQuick.Controls

Text {
	id: label
	color: "white"
	font.family: berenika_font.name
	
	property int shadow_offset: 0
	property var shadow_color: "black"
	property real scale_factor: wyrmgus.scale_factor
	
	Text {
		id: text_shadow
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: shadow_offset
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: shadow_offset
		width: parent.width
		height: parent.height
		text: colored_text(parent.text, shadow_color)
		color: shadow_color
		font: parent.font
		wrapMode: parent.wrapMode
		horizontalAlignment: parent.horizontalAlignment
		verticalAlignment: parent.verticalAlignment
		z: -1 //draw below parent
	}
}
