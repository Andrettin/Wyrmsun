import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: multiplayer_game_host_menu
	title: "Multiplayer Game"
	
	property var selected_map: null
	
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
		anchors.bottom: players_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "File: " + selected_map.presentation_filename
	}
	
	NormalText {
		id: players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: "Players: " + selected_map.player_count
	}
	
	NormalText {
		id: map_size_label
		//anchors.bottom: previous_menu_button.top
		//anchors.bottomMargin: 64 * wyrmgus.scale_factor
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
		text: "Reveal Map"
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
		text: "Computer Opponents"
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
		
		onModelChanged: {
			set_selected_entry(2) //normal difficulty
		}
		
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
	
	LargeButton {
		id: start_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Start Game"
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
		lua_command: "InitGameSettings(); server_multi_game_menu:stop();"
	}
}
