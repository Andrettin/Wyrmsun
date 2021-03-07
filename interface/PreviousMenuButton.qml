import QtQuick 2.12
import QtQuick.Controls 2.12

LargeButton {
	anchors.horizontalCenter: parent.horizontalCenter
	text: "Previous Menu"
	hotkey: "p"
	
	onClicked: {
		menu_stack.pop()
	}
}
