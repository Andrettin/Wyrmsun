import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: legacy_quests_menu
	title: "Legacy Quests"
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		lua_command: "legacy_quests_menu:stop();"
	}
}
