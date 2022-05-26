import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: multiplayer_game_join_menu
	title: "Multiplayer Game"
	
	readonly property var selected_map: wyrmgus.network_manager.map_info
	
	LargeText {
		id: map_label
		anchors.bottom: name_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "Map"
	}
	
	NormalText {
		id: name_label
		anchors.bottom: file_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "Name: " + selected_map.name
	}
	
	NormalText {
		id: file_label
		anchors.bottom: map_players_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "File: " + selected_map.presentation_filename
	}
	
	NormalText {
		id: map_players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "Players: " + selected_map.player_count
	}
	
	NormalText {
		id: map_size_label
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: -64 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 64 * wyrmgus.scale_factor
		text: "Size: " + selected_map.map_width + "x" + selected_map.map_height
	}
	
	LargeText {
		id: players_label
		anchors.top: map_label.top
		anchors.left: parent.right
		anchors.leftMargin: -384 * wyrmgus.scale_factor
		text: "Players"
	}
	
	NormalText {
		id: host_player_label
		anchors.top: name_label.top
		anchors.left: players_label.left
		text: wyrmgus.network_manager.get_player_name(0)
		visible: text.length > 0
	}
	
	NormalText {
		id: host_player_state_label
		anchors.top: host_player_label.top
		anchors.left: host_player_label.left
		anchors.leftMargin: 128 * wyrmgus.scale_factor
		text: "Creator"
		visible: host_player_label.visible
	}
	
	Repeater {
		model: 7
		
		Item {
			anchors.top: host_player_label.bottom
			anchors.topMargin: 8 * wyrmgus.scale_factor + (host_player_state_label.height + 8 * wyrmgus.scale_factor) * index
			anchors.left: players_label.left
			anchors.right: multiplayer_game_join_menu.right
			
			readonly property int player_index: index + 1
			property bool player_ready: wyrmgus.network_manager.client.is_player_ready(player_index)
			
			NormalText {
				id: player_label
				anchors.top: parent.top
				anchors.left: parent.left
				text: wyrmgus.network_manager.get_player_name(player_index)
				visible: text.length > 0
			}
			
			NormalText {
				id: player_state_label
				anchors.top: parent.top
				anchors.left: parent.left
				anchors.leftMargin: 128 * wyrmgus.scale_factor
				text: player_ready ? "Ready" : "Preparing"
				visible: player_label.visible
			}
	
			Connections {
				target: wyrmgus.network_manager
				
				function onPlayer_name_changed(changed_player_index, name) {
					if (changed_player_index !== player_index) {
						return
					}
					
					player_label.text = name
				}
				
				function onPlayer_ready_changed(changed_player_index, ready) {
					if (changed_player_index !== player_index) {
						return
					}
					
					player_ready = ready
				}
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		lua_command: "NetworkDetachFromServer(); joining_map_menu:stop();"
	}
}
