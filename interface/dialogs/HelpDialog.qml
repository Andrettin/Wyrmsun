import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: help_dialog
	panel: 1
	title: "Help"
	
	LargeButton {
		id: encyclopedia_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Encyclopedia")
		hotkey: "c"
		interface_style: help_dialog.interface_style
		
		onClicked: {
			if (game_menu_dialog.opened) {
				game_menu_dialog.open_when_menu_is_closed = true
				game_menu_dialog.close()
			}
			help_dialog.open_when_menu_is_closed = true
			help_dialog.close()
			map_view.create_menu(["menus/EncyclopediaMenu.qml"])
		}
	}
	
	LargeButton {
		id: hotkeys_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: encyclopedia_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Hotkeys")
		hotkey: "h"
		interface_style: help_dialog.interface_style
		
		onClicked: {
			hotkeys_dialog.open()
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: hotkeys_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Previous Menu")
		hotkey: "esc"
		interface_style: help_dialog.interface_style
		
		onClicked: {
			help_dialog.close()
		}
	}
}
