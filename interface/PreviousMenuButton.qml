import QtQuick 2.12
import QtQuick.Controls 2.12

LargeButton {
	anchors.horizontalCenter: parent.horizontalCenter
	text: "Previous Menu"
	hotkey: "p"
	
	onClicked: {
		if (menu_stack.depth > 1) {
			menu_stack.pop()
		} else {
			map_view.menu_stack = null
			menu_stack.destroy()
		}
	}
}
