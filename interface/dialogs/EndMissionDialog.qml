import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: end_mission_dialog
	panel: 1
	title: qsTr("End Mission")
	
	LargeButton {
		id: restart_mission_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Restart Mission")
		hotkey: "r"
		interface_style: end_mission_dialog.interface_style
		enabled: !wyrmgus.game.multiplayer
		
		onClicked: {
			restart_mission_confirm_dialog.open()
		}
	}
	
	LargeButton {
		id: quit_mission_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: restart_mission_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Quit Mission")
		hotkey: "q"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			quit_mission_confirm_dialog.open()
		}
	}
	
	LargeButton {
		id: exit_to_desktop_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: quit_mission_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Exit to Desktop")
		hotkey: "x"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			exit_to_desktop_confirm_dialog.open()
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: exit_to_desktop_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Previous Menu")
		hotkey: "esc"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			end_mission_dialog.close()
		}
	}
}
