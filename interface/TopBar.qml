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
	
	NormalText {
		id: text
		text: "Test"
		anchors.left: parent.left
		anchors.top: parent.top
	}
	
	Image {
		id: copper_resource_icon
		anchors.left: text.right
		anchors.leftMargin: 20
		anchors.top: parent.top
		source: "image://resource_icon/copper"
	}
	
	Image {
		id: lumber_resource_icon
		anchors.left: copper_resource_icon.right
		anchors.leftMargin: 20
		anchors.top: parent.top
		source: "image://resource_icon/lumber"
	}
	
	Image {
		id: stone_resource_icon
		anchors.left: lumber_resource_icon.right
		anchors.leftMargin: 20
		anchors.top: parent.top
		source: "image://resource_icon/stone"
	}
}
