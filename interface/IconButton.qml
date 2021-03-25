import QtQuick 2.12
import QtQuick.Controls 2.12

ButtonBase {
	button_type: pressed ? "pressed_icon_frame" : "icon_frame"
	
	property string icon: ""
	property string player_color: "violet"
	
	//black rectangle to prevent transparent space from being shown when the button is pressed (and thus the icon moved is shifted)
	Rectangle {
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		z: -2 //behind the main image
		width: icon_image.width
		height: icon_image.height
		color: "black"
	}
	
	Image {
		id: icon_image
		z: -1 //behind the frame image
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: (pressed ? 1 : 0) * wyrmgus.defines.scale_factor
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: (pressed ? 1 : 0) * wyrmgus.defines.scale_factor
		source: icon.length > 0 ? "image://icon/" + icon + "/" + player_color : "image://empty/"
	}
}
