import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: game_menu_dialog
	panel: 1
	title: "Game Menu"
	enabled: map_view.menu_stack === null
	
	LargeButton {
		id: options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Options")
		hotkey: "f5"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			options_dialog.open()
		}
	}
	
	LargeButton {
		id: help_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: options_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Help")
		hotkey: "f1"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			help_dialog.open()
		}
	}
	
	LargeButton {
		id: save_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: help_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Save")
		hotkey: "s"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			save_game_dialog.open()
		}
	}
	
	LargeButton {
		id: load_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: save_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Load")
		hotkey: "f12"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			load_game_dialog.open()
		}
	}
	
	LargeButton {
		id: end_mission_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: load_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("End Mission")
		hotkey: "e"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			end_mission_dialog.open()
		}
	}
	
	LargeButton {
		id: return_to_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: end_mission_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Return to Game")
		hotkey: "esc"
		interface_style: game_menu_dialog.interface_style
		
		onClicked: {
			game_menu_dialog.close()
		}
	}
}
