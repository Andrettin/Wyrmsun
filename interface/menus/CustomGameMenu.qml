import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: custom_game_menu
	title: "Custom Game"
	
	property var selected_map: map_dropdown.selectedEntry
	
	NormalText {
		id: world_label
		text: "World:"
		anchors.left: world_dropdown.left
		anchors.bottom: world_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: world_dropdown
		anchors.right: map_dropdown.left
		anchors.rightMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: map_dropdown.bottom
		width: 150 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_map_worlds()
	}
	
	NormalText {
		id: map_label
		text: "Map:"
		anchors.left: map_dropdown.left
		anchors.bottom: map_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: map_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: resources_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		width: 150 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_map_infos(world_dropdown.selectedEntry ? world_dropdown.selectedEntry : "Custom")
		
		onEntriesChanged: {
			selectedEntryIndex = 0
		}
		
		onSelectedEntryChanged: {
			if (selectedEntry !== null) {
				wyrmgus.call_lua_command("GetMapInfo(\"" + escape_string(selectedEntry.presentation_filepath) + "\");")
			}
		}
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	NormalText {
		id: difficulty_label
		text: "Difficulty:"
		anchors.left: difficulty_dropdown.left
		anchors.bottom: difficulty_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.left: resources_dropdown.left
		anchors.bottom: resources_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		width: 150 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_difficulties()
		
		onEntriesChanged: {
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
	
	NormalText {
		id: resources_label
		text: "Resources:"
		anchors.left: resources_dropdown.left
		anchors.bottom: resources_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: resources_dropdown
		anchors.left: game_type_dropdown.right
		anchors.leftMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: game_type_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		width: 150 * wyrmgus.defines.scale_factor
		entries: ["Map Default", "Low", "Medium", "High"]
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.Resources = " + resources_dropdown.selectedEntryIndex + ";")
		}
	}
	
	NormalText {
		id: opponents_label
		text: "Opponents:"
		anchors.left: opponents_dropdown.left
		anchors.bottom: opponents_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: opponents_dropdown
		anchors.left: world_dropdown.left
		anchors.top: game_type_dropdown.top
		width: 150 * wyrmgus.defines.scale_factor
		entries: get_entries(selected_map)
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.Opponents = " + opponents_dropdown.selectedEntryIndex + ";")
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
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: game_type_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		width: 150 * wyrmgus.defines.scale_factor
		entries: ["Use Map Settings", "Melee", "Free for All", "Top vs Bottom", "Left vs Right", "Man vs Machine"]
		
		onSelectedEntryChanged: {
			wyrmgus.call_lua_command("GameSettings.GameType = " + (game_type_dropdown.selectedEntryIndex - 1) + ";")
		}
	}
	
	NormalText {
		id: map_name_label
		text: "Map: " + (selected_map ? (selected_map.name + " (" + selected_map.map_width + "x" + selected_map.map_height + ")") : "")
		anchors.left: world_dropdown.left
		anchors.leftMargin: -32 * wyrmgus.defines.scale_factor
		anchors.top: game_type_dropdown.bottom
		anchors.topMargin: 32 * wyrmgus.defines.scale_factor
	}
	
	LargeButton {
		id: start_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Start Game"
		hotkey: "s"
		lua_command: "RunningScenario = true; custom_game_menu:stop(); RunMap(\"" + escape_string(selected_map.presentation_filepath) + "\"); SetCurrentCustomHero(\"\"); RunningScenario = false;"
		
		onClicked: {
			wyrmgus.clear_map_infos()
			menu_stack.pop()
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); GameSettings:reset(); custom_game_menu:stop();"
		
		onClicked: {
			wyrmgus.clear_map_infos()
		}
	}
}
