import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: custom_game_menu
	title: "Custom Game"
	
	readonly property var selected_map: map_dropdown.selectedEntry
	readonly property int dropdown_width: 150 * wyrmgus.scale_factor
	
	NormalText {
		id: world_label
		text: "World:"
		anchors.left: world_dropdown.left
		anchors.bottom: world_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: world_dropdown
		anchors.right: resources_dropdown.left
		anchors.rightMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: map_dropdown.bottom
		width: custom_game_menu.dropdown_width
		model: wyrmgus.get_map_worlds()
	}
	
	NormalText {
		id: map_label
		text: "Map:"
		anchors.left: map_dropdown.left
		anchors.bottom: map_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: map_dropdown
		anchors.left: resources_dropdown.left
		anchors.bottom: resources_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: custom_game_menu.dropdown_width * 2
		model: wyrmgus.get_map_infos(world_dropdown.selectedEntry ? world_dropdown.selectedEntry : "Custom")
		
		onModelChanged: {
			currentIndex = 0
		}
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: civilization_label
		text: "Your Civilization:"
		anchors.left: civilization_dropdown.left
		anchors.bottom: civilization_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: civilization_dropdown
		anchors.left: world_dropdown.left
		anchors.top: resources_dropdown.top
		width: custom_game_menu.dropdown_width
		model: get_entries(wyrmgus.get_playable_civilizations())
		
		readonly property var civilization_index: selectedEntry !== -1 ? selectedEntry.index : -1
		
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
		anchors.left: resources_dropdown.left
		anchors.bottom: resources_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: resources_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: game_type_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: custom_game_menu.dropdown_width
		model: ["Map Default", "Low", "Medium", "High"]
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.Resources = " + resources_dropdown.currentIndex + ";")
		}
	}
	
	NormalText {
		id: opponents_label
		text: "Opponents:"
		anchors.left: opponents_dropdown.left
		anchors.bottom: opponents_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: opponents_dropdown
		anchors.left: resources_dropdown.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		anchors.top: resources_dropdown.top
		width: custom_game_menu.dropdown_width
		model: get_entries(selected_map)
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.Opponents = " + opponents_dropdown.currentIndex + ";")
		}
		
		function get_entries(map_info) {
			var entries = ["Map Default"]
			var player_count = map_info.player_count - 1 //-1 to account for the human player
			
			for (var i = 0; i < player_count; ++i) {
				if (i == 0) {
					entries.push("1 Opponent")
				} else {
					entries.push((i + 1) + " Opponents")
				}
			}
			
			return entries
		}
	}
	
	NormalText {
		id: game_type_label
		text: "Game Type:"
		anchors.left: game_type_dropdown.left
		anchors.bottom: game_type_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: game_type_dropdown
		anchors.left: civilization_dropdown.left
		anchors.verticalCenter: parent.verticalCenter
		width: custom_game_menu.dropdown_width
		model: ["Use Map Settings", "Melee", "Free for All", "Top vs Bottom", "Left vs Right", "Man vs Machine"]
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.GameType = " + (game_type_dropdown.currentIndex - 1) + ";")
		}
	}
	NormalText {
		id: difficulty_label
		text: "Difficulty:"
		anchors.left: difficulty_dropdown.left
		anchors.bottom: difficulty_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.left: resources_dropdown.left
		anchors.top: game_type_dropdown.top
		width: custom_game_menu.dropdown_width
		model: wyrmgus.get_difficulties()
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.get_difficulty_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_difficulty_index() !== selectedEntry) {
				wyrmgus.preferences.set_difficulty_index(selectedEntry)
				wyrmgus.preferences.save()
				
				wyrmgus.call_lua_command("GameSettings.Difficulty = " + wyrmgus.preferences.get_difficulty_index() + ";")
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_difficulty_name(entry)
		}
	}
	
	ScrollableTextArea {
		id: map_description_label
		anchors.left: world_dropdown.left
		anchors.leftMargin: -32 * wyrmgus.scale_factor
		anchors.right: opponents_dropdown.right
		anchors.rightMargin: -32 * wyrmgus.scale_factor
		anchors.top: game_type_dropdown.bottom
		anchors.topMargin: 20 * wyrmgus.scale_factor
		anchors.bottom: start_game_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: selected_map ? selected_map.description : ""
	}
	
	LargeButton {
		id: start_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Start Game"
		hotkey: "s"
		
		onClicked: {
			wyrmgus.call_lua_command("GameSettings.Presets[" + selected_map.person_player_index + "].Race = " + civilization_dropdown.civilization_index + ";")
			wyrmgus.game.run_map_async(selected_map.presentation_filepath)
			wyrmgus.clear_map_infos()
			menu_stack.pop()
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		lua_command: "GameSettings:reset();"
		
		onClicked: {
			wyrmgus.clear_map_infos()
		}
	}
}
