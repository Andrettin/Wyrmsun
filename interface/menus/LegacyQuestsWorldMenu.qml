import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: legacy_quests_world_menu
	title: "Legacy Quests"
	
	property string world: ""
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); quest_world_menu:stop();"
	}
}
