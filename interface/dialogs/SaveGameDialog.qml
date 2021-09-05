import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

FileDialog {
	id: save_game_dialog
	title: "Save Game"
	defaultSuffix: ".sav.gz"
	folder: "file:///" + wyrmgus.save_path
	nameFilters: ["Stratagus Save Files (*.sav.gz *.sav)"]
	selectExisting: false
	sidebarVisible: false
	
	onAccepted: {
		var filepath = save_game_dialog.fileUrl.toString()
		filepath = filepath.substr(8, filepath.length - 8) //remove the "file:///" from the file path
		wyrmgus.call_lua_command("RunSaveGame(\"" + filepath + "\");")
	}
}
