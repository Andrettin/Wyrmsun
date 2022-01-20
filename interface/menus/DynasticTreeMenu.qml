import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."
import "../dialogs"

ButtonTreeMenuBase {
	id: dynastic_tree_menu
	title: (dynasty ? dynasty.name + " " : "") + "Dynastic Tree"
	entries: dynasty ? dynasty.dynastic_tree_characters : []
	icon_button_component: Qt.createComponent("../DynasticTreeIconButton.qml")
	
	property var dynasty: null
}
