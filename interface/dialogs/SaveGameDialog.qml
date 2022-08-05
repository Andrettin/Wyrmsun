import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

FileDialog {
	id: save_game_dialog
	title: qsTr("Save Game")
	defaultSuffix: ".sav.gz"
	folder: "file:" + wyrmgus.save_path
	nameFilters: ["Stratagus Save Files (*.sav.gz *.sav)"]
	selectExisting: false
	sidebarVisible: false
	
	onAccepted: {
		var file_url_str = save_game_dialog.fileUrl.toString()
		wyrmgus.call_lua_command("RunSaveGame(\"" + file_url_str + "\");")
	}
}
