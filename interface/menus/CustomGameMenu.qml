import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: custom_game_menu
	title: "Custom Game"
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCustomHero(\"\"); custom_game_menu:stop();"
	}
}
