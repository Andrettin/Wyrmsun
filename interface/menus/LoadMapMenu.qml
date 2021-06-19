import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."
import "../dialogs"

MenuBase {
	id: load_map_menu
	title: "Map Editor"
	
	property var map_info: null
	
	LargeButton {
		id: select_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Select Map"
		hotkey: "s"
		
		onClicked: {
			select_map_dialog.open()
		}
	}
	
	LargeButton {
		id: edit_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: select_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Edit Map"
		hotkey: "e"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: edit_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	FileDialog {
		id: select_map_dialog
		title: "Select Map"
		defaultSuffix: ".smp.gz"
		folder: "file:///" + wyrmgus.user_maps_path
		nameFilters: ["Stratagus Map Presentation Files (*.smp.gz *.smp)"]
		selectExisting: true
		sidebarVisible: false
		
		onAccepted: {
			var filepath = load_game_dialog.fileUrl.toString()
			filepath = filepath.substr(8, filepath.length - 8) //remove the "file:///" from the file path
			wyrmgus.clear_map_infos()
			wyrmgus.load_map_info(filepath)
			load_map_menu.map_info = wyrmgus.get_map_infos()[0]
		}
	}
}
