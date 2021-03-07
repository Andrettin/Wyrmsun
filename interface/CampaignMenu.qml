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
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: start_scenario_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
}
