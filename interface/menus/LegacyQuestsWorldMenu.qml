import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: legacy_quests_world_menu
	title: "Legacy Quests"
	button_component: Qt.createComponent("../LegacyQuestIconButton.qml")
	entries: wyrmgus.get_world_quests(world)
	
	property string world: ""
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); quest_world_menu:stop();"
	}
}
