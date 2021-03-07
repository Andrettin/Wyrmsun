import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
	id: button
	width: image.width
	height: image.height
	
	property string text: ""

	Image {
		id: image
		source: "image://interface/default/large_button/" + (mouse_area.containsPress ? "pressed" : "normal")
	}
	
	Text {
		id: label
		text: parent.text
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: mouse_area.containsPress ? 2 : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: mouse_area.containsPress ? 2 : 0
		color: "white"
		font.pixelSize: 12 * wyrmgus.defines.scale_factor
		font.family: berenika_font.name
		
		layer.enabled: true
		layer.effect: DropShadow {
			horizontalOffset: 2
			verticalOffset: 2
			color: "#FF000000"
			radius: 1
			samples: 3
		}
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
	}
}
