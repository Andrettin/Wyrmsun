import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	height: bar_image.height
	clip: true
	
	property string text: ""
	property string interface_style: "default"
	property bool highlighted: false
	readonly property var image: bar_image
	
	Image {
		id: bar_image
		anchors.verticalCenter: parent.verticalCenter
		anchors.left: parent.left
		source: "image://interface/" + interface_style + "/dropdown_bar"
		fillMode: Image.Pad
	}
	
	NormalText {
		id: label
		text: parent.highlighted ? highlight(parent.text) : parent.text
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: parent.verticalCenter
	}
}
