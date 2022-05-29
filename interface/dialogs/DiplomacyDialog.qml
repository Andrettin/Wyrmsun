import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: diplomacy_dialog
	panel: 5
	title: "Diplomacy"
	
	NormalText {
		id: allied_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.right: enemy_label.left
		anchors.rightMargin: 16 * wyrmgus.scale_factor
		text: "Allied"
	}
	
	NormalText {
		id: enemy_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.right: shared_vision_label.left
		anchors.rightMargin: 16 * wyrmgus.scale_factor
		text: "Enemy"
	}
	
	NormalText {
		id: shared_vision_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: "Shared Vision"
	}
	
	ListView {
		id: diplomacy_list
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: allied_label.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		leftMargin: 8 * wyrmgus.scale_factor
		rightMargin: 8 * wyrmgus.scale_factor
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: filter_list(wyrmgus.non_neutral_players)
		delegate: Item {
			height: Math.max(player_label.height, shared_vision_radio_button.height)
			
			NormalText {
				id: player_label
				text: modelData.name
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
			}
			
			RadioImageButton {
				id: allied_radio_button
				x: allied_label.x - diplomacy_list.contentItem.x + allied_label.width / 2 - width / 2 //place at the horizontal center of the label
				anchors.verticalCenter: parent.verticalCenter
				checked: wyrmgus.this_player.has_allied_stance_with(modelData)
				interface_style: diplomacy_dialog.interface_style
				
				onCheckedChanged: {
					if (checked) {
						if (!wyrmgus.this_player.has_allied_stance_with(modelData)) {
							wyrmgus.this_player.set_allied_diplomatic_stance_with_async(modelData)
						}
					} else {
						if (wyrmgus.this_player.has_allied_stance_with(modelData)) {
							wyrmgus.this_player.set_neutral_diplomatic_stance_with_async(modelData)
						}
					}
				}
			}
			
			RadioImageButton {
				id: enemy_radio_button
				x: enemy_label.x - diplomacy_list.contentItem.x + enemy_label.width / 2 - width / 2 //place at the horizontal center of the label
				anchors.verticalCenter: parent.verticalCenter
				checked: wyrmgus.this_player.has_enemy_stance_with(modelData)
				interface_style: diplomacy_dialog.interface_style
				
				onCheckedChanged: {
					if (checked) {
						if (!wyrmgus.this_player.has_enemy_stance_with(modelData)) {
							wyrmgus.this_player.set_enemy_diplomatic_stance_with_async(modelData)
						}
					} else {
						if (wyrmgus.this_player.has_enemy_stance_with(modelData)) {
							wyrmgus.this_player.set_neutral_diplomatic_stance_with_async(modelData)
						}
					}
				}
			}
			
			RadioImageButton {
				id: shared_vision_radio_button
				x: shared_vision_label.x - diplomacy_list.contentItem.x + shared_vision_label.width / 2 - width / 2 //place at the horizontal center of the label
				anchors.verticalCenter: parent.verticalCenter
				checked: wyrmgus.this_player.has_shared_vision_with(modelData)
				interface_style: diplomacy_dialog.interface_style
				
				onCheckedChanged: {
					if (checked) {
						if (!wyrmgus.this_player.has_shared_vision_with(modelData)) {
							wyrmgus.this_player.set_shared_vision_with_async(modelData, true)
						}
					} else {
						if (wyrmgus.this_player.has_shared_vision_with(modelData)) {
							wyrmgus.this_player.set_shared_vision_with_async(modelData, false)
						}
					}
				}
			}
			
			Connections {
				target: wyrmgus.this_player
				
				function onDiplomatic_stances_changed() {
					allied_radio_button.checked = wyrmgus.this_player.has_allied_stance_with(modelData)
					enemy_radio_button.checked = wyrmgus.this_player.has_enemy_stance_with(modelData)
				}
			}
			
			Connections {
				target: wyrmgus.this_player
				
				function onShared_vision_changed() {
					shared_vision_radio_button.checked = wyrmgus.this_player.has_shared_vision_with(modelData)
				}
			}
		}
		
		function filter_list(list) {
			var new_list = []
			
			for (var i = 0; i < list.length; ++i) {
				var player = list[i]
				if (player !== wyrmgus.this_player && player.active && player.alive) {
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
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Previous Menu (Esc)"
		hotkey: "esc"
		interface_style: diplomacy_dialog.interface_style
		
		onClicked: {
			diplomacy_dialog.close()
		}
	}
}
