import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: load_game_dialog
	panel: 3
	title: "Load Game"
	
	SmallButton {
		id: load_button
		anchors.left: parent.left
		anchors.leftMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Load"
		hotkey: "l"
		
		onClicked: {
			load_game_dialog.close()
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Cancel"
		hotkey: "c"
		
		onClicked: {
			load_game_dialog.close()
		}
	}
}
