import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: main_menu
	anchors.fill: parent

	property real offset_x: (width - 640 * wyrmgus.defines.scale_factor) / 2
	property real offset_y: (height - 480 * wyrmgus.defines.scale_factor) / 2
	
	Image {
		id: background
		anchors.fill: parent
		source: "../graphics/backgrounds/wyrmsun_sepia.png"
		fillMode: Image.PreserveAspectCrop
	}

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
		anchors.top: logo.bottom
		anchors.topMargin: -(logo.height / 4)
		anchors.right: logo.right
	}
	
	LargeButton {
		id: single_player_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		anchors.topMargin: offset_y + (104 + 36*1) * wyrmgus.defines.scale_factor
		text: "Single Player Game"
		hotkey: "s"
	}
}
