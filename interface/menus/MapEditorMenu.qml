import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: map_editor_menu
	title: qsTr("Map Editor")
	
	LargeButton {
		id: new_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("New Map")
		hotkey: "n"
		
		onClicked: {
			menu_stack.push("NewMapMenu.qml")
		}
	}
	
	LargeButton {
		id: load_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: new_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Load Map")
		hotkey: "l"
		
		onClicked: {
			menu_stack.push("LoadMapMenu.qml")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: load_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
	}
}
