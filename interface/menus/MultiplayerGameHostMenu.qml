import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import ".."

MenuBase {
	id: multiplayer_game_host_menu
	title: "Multiplayer Game"
	
	property var selected_map: null
	
	LargeText {
		id: map_label
		anchors.bottom: name_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: map_size_label.left
		text: "Map"
	}
	
	NormalText {
		id: name_label
		anchors.bottom: file_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: map_size_label.left
		text: "Name: " + selected_map.name
	}
	
	NormalText {
		id: file_label
		anchors.bottom: players_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: map_size_label.left
		text: "File: " + selected_map.presentation_filepath
	}
	
	NormalText {
		id: players_label
		anchors.bottom: map_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: map_size_label.left
		text: "Players: " + selected_map.player_count
	}
	
	NormalText {
		id: map_size_label
		//anchors.bottom: previous_menu_button.top
		//anchors.bottomMargin: 64 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: -64 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 64 * wyrmgus.defines.scale_factor
		text: "Size: " + selected_map.map_width + "x" + selected_map.map_height
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "InitGameSettings(); server_multi_game_menu:stop();"
	}
}
