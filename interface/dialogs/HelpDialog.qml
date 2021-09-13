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
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Encyclopedia"
		hotkey: "c"
		interface_style: help_dialog.interface_style
		
		onClicked: {
			map_view.create_menu(["menus/EncyclopediaMenu.qml"])
			game_menu_dialog.close()
			help_dialog.close()
		}
	}
	
	LargeButton {
		id: hotkeys_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: encyclopedia_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Hotkeys"
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
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: help_dialog.interface_style
		
		onClicked: {
			help_dialog.close()
		}
	}
}
