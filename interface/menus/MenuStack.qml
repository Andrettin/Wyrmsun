import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

StackView {
	id: menu_stack
	anchors.fill: parent
	initialItem: "MainMenu.qml"
	focus: wyrmgus.game.running == false
	pushEnter: null
	pushExit: null
	popEnter: null
	popExit: null
}
