import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: campaign_menu
	title: "Scenarios"
	background: scenario_background
	
	property var campaign: null
	readonly property var campaign_civilization: campaign.faction.civilization
	readonly property string scenario_background: campaign_civilization && campaign_civilization.encyclopedia_background_file && campaign_civilization.encyclopedia_background_file.length > 0 ? campaign_civilization.encyclopedia_background_file : wyrmgus.defines.default_menu_background_file
	
	ScrollableTextArea {
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: difficulty_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Faction: " + campaign.faction.link_string + " (" + campaign_civilization.link_string + ")\n\nStart Year: " + year_string(campaign.start_date.getFullYear()) + "\n\nDescription: " + campaign.description + "\n\nHighest Completed Difficulty: " + (campaign.quest ? wyrmgus.get_difficulty_name(campaign.quest.highest_completed_difficulty_index) : "Unknown")
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
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: start_scenario_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor + (height * entries.length)
		width: 100 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_difficulties()
		
		onEntriesChanged: {
			set_selected_entry(wyrmgus.preferences.get_difficulty_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_difficulty_index() !== selectedEntry) {
				wyrmgus.preferences.set_difficulty_index(selectedEntry)
				wyrmgus.preferences.save()
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_difficulty_name(entry)
		}
	}
	
	LargeButton {
		id: start_scenario_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Start Scenario"
		hotkey: "s"
		lua_command: "SetCurrentCampaign(\"" + campaign.identifier + "\"); RunningScenario = true; GetMapInfo(\"scripts/map_templates/campaign.smp\"); GameSettings.Difficulty = " + wyrmgus.preferences.get_difficulty_index() + "; RunMap(\"scripts/map_templates/campaign.smp\");"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCampaign(\"\");"
	}
}
