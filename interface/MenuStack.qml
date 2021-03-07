import QtQuick 2.12
import QtQuick.Controls 2.12

StackView {
	id: menu_stack
	anchors.fill: parent
	initialItem: "MainMenu.qml"
	focus: true
	pushEnter: null
	pushExit: null
	popEnter: null
	popExit: null
}
