import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: button
	width: image.width
	height: image.height

	Image {
		id: image
		source: "image://interface/default/large_button/" + (mouse_area.pressed ? "pressed" : "normal")
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
	}
}
