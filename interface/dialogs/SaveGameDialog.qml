import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import ".."

FileDialog {
	id: save_game_dialog
	title: qsTr("Save Game")
	defaultSuffix: ".sav.gz"
	currentFolder: "file:" + wyrmgus.save_path
	nameFilters: ["Stratagus Save Files (*.sav.gz *.sav)"]
	
	onAccepted: {
		var file_url_str = save_game_dialog.fileUrl.toString()
		wyrmgus.call_lua_command("RunSaveGame(\"" + file_url_str + "\");")
	}
}
