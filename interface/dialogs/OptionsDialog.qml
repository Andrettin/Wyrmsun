import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: options_dialog
	panel: 1
	title: "Options"
	
	LargeButton {
		id: sound_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "Sound (F7)"
		hotkey: "f7"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunGameSoundOptionsMenu();")
			options_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: preferences_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: sound_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Preferences (F8)"
		hotkey: "f8"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunPreferencesMenu();")
			options_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: diplomacy_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: preferences_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Diplomacy (F9)"
		hotkey: "f9"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			wyrmgus.call_lua_command("RunDiplomacyMenu();")
			options_dialog.opacity = 0
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: diplomacy_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			options_dialog.close()
			game_menu_dialog.opacity = 1
		}
	}
}
