import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: tech_tree_menu
	title: "Tech Tree"
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetPlayerData(GetThisPlayer(), \"RaceName\", \"gnome\"); tech_tree_menu:stop();"
	}
}
