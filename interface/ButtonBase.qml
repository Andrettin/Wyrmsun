import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
	id: button
	width: image.width
	height: image.height
	
	property string button_type: ""
	property string text: ""

	Image {
		id: image
		source: "image://interface/default/" + parent.button_type + "/" + (mouse_area.containsPress ? "pressed" : "normal")
	}
	
	NormalText {
		id: label
		text: parent.text
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: mouse_area.containsPress ? 2 : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: mouse_area.containsPress ? 2 : 0
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
	}
}
