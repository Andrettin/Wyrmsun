import QtQuick 2.12
import QtQuick.Controls 2.12

RadioImageButton {
	id: radio_button
	width: image.width + 4 * wyrmgus.scale_factor + label.width
	height: Math.max(image.height, label.height)
	
	NormalText {
		id: label
		text: parent.text
		anchors.right: parent.right
		anchors.verticalCenter: parent.verticalCenter
	}
}
