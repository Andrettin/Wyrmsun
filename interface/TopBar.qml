import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: top_bar
	height: image.height
	
	property string interface_style: "germanic"
	
	Image {
		id: image
		anchors.left: parent.left
		anchors.right: parent.right
		source: "image://interface/" + interface_style + "/top_bar"
		fillMode: Image.PreserveAspectCrop
	}
}
