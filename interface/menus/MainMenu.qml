import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: main_menu
	background: wyrmgus.defines.default_menu_background_file
	
	Image {
		id: logo
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		source: get_best_logo_image()
		
		function get_best_logo_image() {
			var menu_heights = [450, 480, 600, 720, 768, 800, 864, 900, 960, 1024, 1050, 1080, 1200]
			
			var best_height = -1
			var best_difference = 0
			
			for (var i in menu_heights) {
				var potential_height = menu_heights[i]
				var difference = Math.abs(main_menu.height - potential_height)
				if (best_height == -1 || difference < best_difference) {
					best_height = potential_height
					best_difference = difference
				}
			}
			
			return "../../graphics/interface/wyrmsun_logo_" + best_height + ".png"
		}
	}
	
	NormalText {
		id: version_text
		text: "v" + Qt.application.version
		anchors.right: logo.right
		anchors.top: logo.bottom
		anchors.topMargin: -(logo.height / 4)
	}
	
	LargeButton {
		id: single_player_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: multiplayer_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Single Player Game"
		hotkey: "s"
		
		onClicked: {
			menu_stack.push("SinglePlayerGameMenu.qml")
		}
	}
	
	LargeButton {
		id: multiplayer_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: achievements_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Multiplayer Game"
		hotkey: "m"
		lua_command: "InitGameSettings(); InitNetwork1();"
		
		onClicked: {
			menu_stack.push("MultiplayerGameMenu.qml")
		}
	}
	
	LargeButton {
		id: achievements_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Achievements"
		hotkey: "a"
		
		onClicked: {
			menu_stack.push("AchievementsMenu.qml")
		}
	}
	
	LargeButton {
		id: options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: achievements_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Options"
		hotkey: "o"
		
		onClicked: {
			menu_stack.push("OptionsMenu.qml")
		}
	}
	
	LargeButton {
		id: map_editor_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: options_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Map Editor"
		hotkey: "e"
		
		onClicked: {
			menu_stack.push("MapEditorMenu.qml")
		}
	}
	
	LargeButton {
		id: encyclopedia_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: map_editor_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Encyclopedia"
		hotkey: "c"
		
		onClicked: {
			menu_stack.push("EncyclopediaMenu.qml")
		}
	}
	
	LargeButton {
		id: credits_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: encyclopedia_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Credits"
		hotkey: "i"
		
		onClicked: {
			menu_stack.push("CreditsMenu.qml")
		}
	}
	
	LargeButton {
		id: exit_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: credits_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Exit"
		hotkey: "x"
		
		onClicked: {
			wyrmgus.exit()
		}
	}
	
	TinyText {
		id: copyright_text
		text: "Copyright (c) 2013-2021 by Andrettin"
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
