import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."
import "../dialogs"

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
	
	LabeledRadioImageButton {
		id: fog_of_war_radio_button
		anchors.left: map_size_label.left
		anchors.top: map_size_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: "Fog of War"
		checked: wyrmgus.network_manager.client.fog_of_war
		checkable: false
	}
	
	LabeledRadioImageButton {
		id: reveal_map_radio_button
		anchors.left: map_size_label.left
		anchors.top: fog_of_war_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: "Reveal Map"
		checked: wyrmgus.network_manager.client.reveal_map
		checkable: false
	}
	
	LabeledRadioImageButton {
		id: computer_opponents_radio_button
		anchors.left: map_size_label.left
		anchors.top: reveal_map_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: "Computer Opponents"
		checked: wyrmgus.network_manager.client.computer_opponents
		checkable: false
	}
	
	NormalText {
		id: civilization_label
		text: "Civilization:"
		anchors.left: computer_opponents_radio_button.left
		anchors.verticalCenter: civilization_dropdown.verticalCenter
	}
	
	Dropdown {
		id: civilization_dropdown
		anchors.left: civilization_label.left
		anchors.leftMargin: 96 * wyrmgus.scale_factor
		anchors.top: computer_opponents_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		width: 150 * wyrmgus.scale_factor
		model: get_entries(wyrmgus.get_playable_civilizations())
		
		readonly property var civilization_index: selectedEntry !== -1 ? selectedEntry.index : -1
		
		onSelectedEntryChanged: {
			wyrmgus.network_manager.client.set_civilization(civilization_dropdown.civilization_index)
		}
		
		function get_entries(playable_civilizations) {
			var entries = [-1]
			
			for (var i = 0; i < playable_civilizations.length; ++i) {
				var civilization = playable_civilizations[i]
				
				if (civilization.develops_from_count > 0) {
					continue
				}
				
				entries.push(civilization)
			}
			
			return entries
		}
		
		function get_entry_name(entry) {
			if (entry == -1) {
				return "Map Default"
			}
			
			return entry.name
		}
	}
	
	/*
	NormalText {
		id: resources_label
		text: "Resources:"
		anchors.left: computer_opponents_radio_button.left
		anchors.verticalCenter: resources_dropdown.verticalCenter
	}
	
	Dropdown {
		id: resources_dropdown
		anchors.left: resources_label.left
		anchors.leftMargin: 96 * wyrmgus.scale_factor
		anchors.top: civilization_dropdown.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		width: 150 * wyrmgus.scale_factor
		model: ["Map Default", "Low", "Medium", "High"]
		
		onSelectedEntryChanged: {
			wyrmgus.network_manager.server.set_resources_option(currentIndex)
		}
	}
	
	NormalText {
		id: difficulty_label
		text: "Difficulty:"
		anchors.left: computer_opponents_radio_button.left
		anchors.verticalCenter: difficulty_dropdown.verticalCenter
		visible: difficulty_dropdown.visible
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.left: difficulty_label.left
		anchors.leftMargin: 96 * wyrmgus.scale_factor
		anchors.top: resources_dropdown.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		width: 150 * wyrmgus.scale_factor
		model: wyrmgus.get_difficulties()
		visible: computer_opponents_radio_button.checked
		
		onModelChanged: {
			set_selected_entry(2) //normal difficulty
		}
		
		onSelectedEntryChanged: {
			wyrmgus.network_manager.server.set_difficulty(selectedEntry)
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_difficulty_name(entry)
		}
	}
	*/
	
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
	
	NormalText {
		id: open_slots_label
		anchors.top: civilization_label.top
		anchors.left: players_label.left
		text: "Open slots: " + (selected_map.player_count - wyrmgus.network_manager.connected_player_count - 1)
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		lua_command: "NetworkDetachFromServer(); joining_map_menu:stop();"
	}
	
	GenericDialog {
		id: error_dialog
		title: "Error"
	}
	
	Timer {
		interval: 100
		repeat: true
		running: !wyrmgus.game.running
		
		property int join_counter: 0
		
		onTriggered: {
			wyrmgus.network_manager.process_client_request()
			
			//FIXME: do not use numbers
			if (state == 15) { //ccs_started, server started the game
				++join_counter
				
				if (join_counter == 30) {
					wyrmgus.network_manager.client.start_game()
				}
			} else if (state == 10) { //ccs_unreachable
				error_dialog.text = "Cannot reach server."
				error_dialog.open()
				menu_stack.pop()
			}
		}
	}
}
