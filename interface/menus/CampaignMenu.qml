import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: campaign_menu
	title: "Scenarios"
	
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
