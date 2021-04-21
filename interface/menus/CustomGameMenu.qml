import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: custom_game_menu
	title: "Custom Game"
	
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
		width: 100 * wyrmgus.defines.scale_factor
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
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); GameSettings:reset(); custom_game_menu:stop();"
	}
}
