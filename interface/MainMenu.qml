import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: main_menu

	Image {
		id: background
		anchors.fill: parent
		source: "../graphics/backgrounds/wyrmsun_sepia.png"
		fillMode: Image.PreserveAspectCrop
	}

	Image {
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
		
		id: logo
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		source: get_best_logo_image()
	}
}
