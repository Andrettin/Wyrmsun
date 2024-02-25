import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import ".."

FileDialog {
	id: load_game_dialog
	title: qsTr("Load Game")
	defaultSuffix: ".sav.gz"
	currentFolder: "file:///" + wyrmgus.save_path
	nameFilters: ["Stratagus Save Files (*.sav.gz *.sav)"]
	
	onAccepted: {
		wyrmgus.load_game(load_game_dialog.fileUrl)
	}
}
