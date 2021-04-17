import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: campaign_menu
	title: "Scenarios"
	
	Dropdown {
		id: campaign_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor * 4
		width: 250 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_available_campaigns()
		
		onEntriesChanged: {
			campaign_dropdown.set_selected_entry(wyrmgus.preferences.selected_campaign)
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.selected_campaign !== campaign_dropdown.selectedEntry) {
				wyrmgus.preferences.selected_campaign = campaign_dropdown.selectedEntry
				wyrmgus.preferences.save()
			}
		}
		
		Connections {
			target: wyrmgus
			onRunningChanged: {
				if (!wyrmgus.running) {
					//refresh the campaign list when a game has ended, as new campaigns may have become available
					campaign_dropdown.entries = wyrmgus.get_available_campaigns()
				}
			}
		}
		
		function get_entry_name(entry) {
			var name = entry.name
			
			if (entry.quest !== null && !entry.quest.completed) {
				name += " " + highlight("(!)")
			}
			
			return name
		}
	}
	
	LargeButton {
		id: start_scenario_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Start Scenario"
		hotkey: "s"
		lua_command: "save_preferences(); RunningScenario = true; GetMapInfo(\"scripts/map_templates/campaign.smp\"); GameSettings.NoRandomness = wyr.preferences.NoRandomness; GameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay; GameSettings.Difficulty = wyr.preferences.Difficulty; campaign_menu:stop(); RunMap(\"scripts/map_templates/campaign.smp\");"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "save_preferences(); SetCurrentCampaign(\"\"); campaign_menu:stop();"
	}
}
