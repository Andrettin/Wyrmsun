import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBase {
	id: campaign_menu
	title: "Scenarios"
	
	LargeButton {
		id: start_scenario_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Start Scenario"
		hotkey: "s"
		
		onClicked: {
			wyrmgus.game.current_campaign = wyrmgus.preferences.selected_campaign
			wyrmgus.call_lua_command("save_preferences(); RunningScenario = true; GetMapInfo(\"scripts/map_templates/campaign.smp\"); GameSettings.NoRandomness = wyr.preferences.NoRandomness; GameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay; GameSettings.Difficulty = wyr.preferences.Difficulty; RunMap(\"scripts/map_templates/campaign.smp\");")
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: start_scenario_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
}
