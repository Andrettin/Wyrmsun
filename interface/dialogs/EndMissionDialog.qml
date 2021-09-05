import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: end_mission_dialog
	panel: 1
	title: "End Mission"
	
	LargeButton {
		id: restart_mission_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Restart Mission"
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
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Quit Mission"
		hotkey: "q"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunQuitToMenuConfirmMenu();")
			end_mission_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: exit_to_desktop_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: quit_mission_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Exit to Desktop"
		hotkey: "x"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunExitConfirmMenu();")
			end_mission_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: exit_to_desktop_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: end_mission_dialog.interface_style
		
		onClicked: {
			end_mission_dialog.close()
			game_menu_dialog.opacity = 1
		}
	}
}
