import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import ".."

MenuBase {
	id: multiplayer_game_host_menu
	title: qsTr("Multiplayer Game")
	
	property var selected_map: null
	
	LargeText {
		id: map_label
		anchors.bottom: name_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: qsTr("Map")
	}
	
	NormalText {
		id: name_label
		anchors.bottom: file_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: qsTr("Name") + ": " + selected_map.name
	}
	
	NormalText {
		id: file_label
		anchors.bottom: map_players_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: qsTr("File") + ": " + selected_map.presentation_filename
	}
	
	NormalText {
		id: map_players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: qsTr("Players") + ": " + selected_map.player_count
	}
	
	NormalText {
		id: map_size_label
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: -64 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 64 * wyrmgus.scale_factor
		text: qsTr("Size") + ": " + selected_map.map_width + "x" + selected_map.map_height
	}
	
	LabeledRadioImageButton {
		id: fog_of_war_radio_button
		anchors.left: map_size_label.left
		anchors.top: map_size_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Fog of War")
		checked: true
		
		onCheckedChanged: {
			wyrmgus.network_manager.server.set_fog_of_war(checked)
		}
		
		Component.onCompleted: {
			wyrmgus.network_manager.server.set_fog_of_war(checked)
		}
	}
	
	LabeledRadioImageButton {
		id: reveal_map_radio_button
		anchors.left: map_size_label.left
		anchors.top: fog_of_war_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Reveal Map")
		checked: false
		
		onCheckedChanged: {
			wyrmgus.network_manager.server.set_reveal_map(checked)
		}
		
		Component.onCompleted: {
			wyrmgus.network_manager.server.set_reveal_map(checked)
		}
	}
	
	LabeledRadioImageButton {
		id: computer_opponents_radio_button
		anchors.left: map_size_label.left
		anchors.top: reveal_map_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Computer Opponents")
		checked: false
		
		onCheckedChanged: {
			wyrmgus.network_manager.server.set_computer_opponents(checked)
		}
		
		Component.onCompleted: {
			wyrmgus.network_manager.server.set_computer_opponents(checked)
		}
	}
	
	NormalText {
		id: civilization_label
		text: qsTr("Civilization") + ":"
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
			wyrmgus.network_manager.server.set_player_civilization(0, civilization_dropdown.civilization_index)
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
	
	NormalText {
		id: resources_label
		text: qsTr("Resources") + ":"
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
		model: [qsTr("Map Default"), qsTr("Low"), qsTr("Medium"), qsTr("High")]
		
		onSelectedEntryChanged: {
			wyrmgus.network_manager.server.set_resources_option(currentIndex)
		}
	}
	
	NormalText {
		id: difficulty_label
		text: qsTr("Difficulty") + ":"
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
	
	LargeText {
		id: players_label
		anchors.top: map_label.top
		anchors.left: parent.right
		anchors.leftMargin: -384 * wyrmgus.scale_factor
		text: qsTr("Players")
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
		text: qsTr("Creator")
		visible: host_player_label.visible
	}
	
	Repeater {
		model: 7
		
		Item {
			anchors.top: host_player_label.bottom
			anchors.topMargin: 8 * wyrmgus.scale_factor + (host_player_state_label.height + 8 * wyrmgus.scale_factor) * index
			anchors.left: players_label.left
			anchors.right: multiplayer_game_host_menu.right
			
			readonly property int player_index: index + 1
			property bool player_ready: wyrmgus.network_manager.server.is_player_ready(player_index)
			
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
		text: qsTr("Open slots") + ": " + (selected_map.player_count - wyrmgus.network_manager.connected_player_count - 1)
	}
	
	NormalText {
		id: waiting_for_players_label
		anchors.top: difficulty_label.top
		anchors.left: players_label.left
		text: qsTr("Waiting for players...")
		visible: !wyrmgus.network_manager.server.ready_to_start
	}
	
	LargeButton {
		id: start_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Start Game")
		hotkey: "s"
		visible: wyrmgus.network_manager.server.ready_to_start
		
		onClicked: {
			wyrmgus.network_manager.server.start_game()
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		lua_command: "InitGameSettings();"
	}
	
	Timer {
		interval: 100
		repeat: true
		running: !wyrmgus.game.running
		
		onTriggered: {
			wyrmgus.network_manager.process_server_request()
		}
	}
}
