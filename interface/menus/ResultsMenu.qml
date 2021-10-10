import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: results_menu
	title: "Results"
	music_type: wyrmgus.game.results.victory ? "victory" : (wyrmgus.game.results.defeat ? "defeat" : "menu")
	
	LargeText {
		id: outcome_label
		text: wyrmgus.game.results.victory ? "Victory" : (wyrmgus.game.results.defeat ? "Defeat" : "Draw")
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		font.pixelSize: 24 * wyrmgus.scale_factor
		font.bold: true
	}
	
	PreviousMenuButton {
		id: continue_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Continue"
		hotkey: "c"
		lua_command: "CleanPlayers(); results_menu:stop();"
	}
}
