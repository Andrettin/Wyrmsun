import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import ".."

MenuBase {
	id: create_multiplayer_game_menu
	title: qsTr("Create Multiplayer Game")
	
	readonly property var selected_map: map_dropdown.selectedEntry
	
	NormalText {
		id: name_label
		anchors.bottom: file_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: selected_map !== null ? ("Name: " + selected_map.name) : ""
	}
	
	NormalText {
		id: file_label
		anchors.bottom: players_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: selected_map !== null ? ("File: " + selected_map.presentation_filename) : ""
	}
	
	NormalText {
		id: players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: map_size_label.left
		text: selected_map !== null ? ("Players: " + selected_map.player_count) : ""
	}
	
	NormalText {
		id: map_size_label
		anchors.bottom: create_game_button.top
		anchors.bottomMargin: 64 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 64 * wyrmgus.scale_factor
		text: selected_map !== null ? ("Size: " + selected_map.map_width + "x" + selected_map.map_height) : ""
	}
	
	NormalText {
		id: world_label
		text: qsTr("World") + ":"
		anchors.left: world_dropdown.left
		anchors.bottom: world_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: world_dropdown
		anchors.horizontalCenter: map_dropdown.horizontalCenter
		anchors.bottom: map_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: 150 * wyrmgus.scale_factor
		model: wyrmgus.get_map_worlds()
	}
	
	NormalText {
		id: map_label
		text: qsTr("Map") + ":"
		anchors.left: map_dropdown.left
		anchors.bottom: map_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: map_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: parent.width / 8
		anchors.bottom: create_game_button.top
		anchors.bottomMargin: 64 * wyrmgus.scale_factor
		width: 150 * wyrmgus.scale_factor
		model: wyrmgus.get_map_infos(world_dropdown.selectedEntry ? world_dropdown.selectedEntry : "Custom")
		
		onModelChanged: {
			currentIndex = 0
		}
		
		function get_entry_name(entry) {
			return entry.name
		}
	}
	
	LargeButton {
		id: create_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Create Game")
		hotkey: "c"
		
		onClicked: {
			wyrmgus.network_manager.init_server_connect(selected_map.presentation_filepath, selected_map.player_count)
			
			menu_stack.push("MultiplayerGameHostMenu.qml", {
				selected_map: create_multiplayer_game_menu.selected_map
			})
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: create_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		
		onClicked: {
			wyrmgus.clear_map_infos()
		}
	}
}
