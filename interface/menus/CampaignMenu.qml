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
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: difficulty_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Faction") + ": " + campaign.faction.link_string + " (" + campaign_civilization.link_string + ")"
			+ (campaign.timeline ? ("\n\n" + qsTr("Timeline") + ": " + campaign.timeline.name) : "")
			+ "\n\n" + qsTr("Start Year") + ": " + date_year_string(campaign.start_date)
			+ "\n\n" + qsTr("Description") + ": " + campaign.description
			+ "\n\n" + qsTr("Highest Completed Difficulty") + ": " + (campaign.quest ? wyrmgus.get_difficulty_name(campaign.quest.highest_completed_difficulty_index) : qsTr("Unknown"))
			+ (campaign.map_presets ? ("\n\n" + campaign.map_presets.text) : "")
	}
	
	NormalText {
		id: difficulty_label
		text: qsTr("Difficulty") + ":"
		anchors.left: difficulty_dropdown.left
		anchors.bottom: difficulty_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: start_scenario_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor + (height * model.length)
		width: 100 * wyrmgus.scale_factor
		model: wyrmgus.get_difficulties()
		
		onModelChanged: {
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
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Start Scenario")
		hotkey: "s"
		
		onClicked: {
			wyrmgus.call_lua_command("GameSettings.Difficulty = " + wyrmgus.preferences.get_difficulty_index() + ";")
			wyrmgus.game.run_campaign_async(campaign)
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
}
