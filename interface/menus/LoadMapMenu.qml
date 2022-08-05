import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."
import "../dialogs"

MenuBase {
	id: load_map_menu
	title: "Map Editor"
	
	property var selected_map: null
	
	NormalText {
		id: name_label
		anchors.bottom: file_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: select_map_button.left
		text: selected_map !== null ? ("Name: " + selected_map.name) : ""
	}
	
	NormalText {
		id: file_label
		anchors.bottom: players_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: select_map_button.left
		text: selected_map !== null ? ("File: " + selected_map.presentation_filepath) : ""
	}
	
	NormalText {
		id: players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: select_map_button.left
		text: selected_map !== null ? ("Players: " + selected_map.player_count) : ""
	}
	
	NormalText {
		id: map_size_label
		anchors.bottom: select_map_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: select_map_button.left
		text: selected_map !== null ? ("Size: " + selected_map.map_width + "x" + selected_map.map_height) : ""
	}
	
	LargeButton {
		id: select_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Select Map")
		hotkey: "s"
		
		onClicked: {
			select_map_dialog.open()
		}
	}
	
	LargeButton {
		id: edit_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: select_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Edit Map")
		hotkey: "e"
		
		onClicked: {
			wyrmgus.map_editor.start_async(load_map_menu.selected_map.presentation_filepath)
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: edit_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
	}
	
	FileDialog {
		id: select_map_dialog
		title: "Select Map"
		defaultSuffix: ".smp.gz"
		folder: "file:" + wyrmgus.user_maps_path
		nameFilters: ["Stratagus Map Presentation Files (*.smp.gz *.smp)"]
		selectExisting: true
		sidebarVisible: false
		
		onAccepted: {
			wyrmgus.load_map_info(select_map_dialog.fileUrl)
			load_map_menu.selected_map = wyrmgus.get_map_infos()[0]
		}
	}
}
