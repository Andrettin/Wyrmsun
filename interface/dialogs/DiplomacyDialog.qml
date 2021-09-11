import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: diplomacy_dialog
	panel: 5
	title: "Diplomacy"
	
	ListView {
		id: diplomacy_list
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		leftMargin: 8 * wyrmgus.defines.scale_factor
		rightMargin: 8 * wyrmgus.defines.scale_factor
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: filter_list(wyrmgus.non_neutral_players)
		delegate: NormalText {
			text: modelData.name
		}
		
		function filter_list(list) {
			var new_list = []
			
			for (var i = 0; i < list.length; ++i) {
				var player = list[i]
				if (player !== wyrmgus.this_player && player.active) {
					new_list.push(player)
				}
			}
			
			return new_list
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: diplomacy_dialog.interface_style
		
		onClicked: {
			diplomacy_dialog.close()
		}
	}
}
