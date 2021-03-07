import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBase {
	id: main_menu
	anchors.fill: parent
	background: "wyrmsun_sepia"
	
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
			
			return "../graphics/interface/wyrmsun_logo_" + best_height + ".png"
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
	}
	
	LargeButton {
		id: multiplayer_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: achievements_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Multiplayer Game"
		hotkey: "m"
	}
	
	LargeButton {
		id: achievements_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: options_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Achievements"
		hotkey: "a"
	}
	
	LargeButton {
		id: options_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: 14 * wyrmgus.defines.scale_factor
		text: "Options"
		hotkey: "o"
	}
	
	LargeButton {
		id: map_editor_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: options_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Map Editor"
		hotkey: "e"
	}
	
	LargeButton {
		id: mods_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: map_editor_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Mods"
		hotkey: "d"
	}
	
	LargeButton {
		id: encyclopedia_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: mods_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Encyclopedia"
		hotkey: "c"
	}
	
	LargeButton {
		id: credits_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: encyclopedia_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Credits"
		hotkey: "i"
	}
	
	LargeButton {
		id: exit_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: credits_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Exit"
		hotkey: "x"
	}
	
	TinyText {
		id: copyright_text
		text: "Copyright (c) 2013-2021 by Andrettin"
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
