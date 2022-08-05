import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: results_menu
	title: qsTr("Results")
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
	
	LargeText {
		id: player_label
		anchors.right: units_label.left
		anchors.rightMargin: 96 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Player")
	}
	
	LargeText {
		id: units_label
		anchors.right: buildings_label.left
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.top: outcome_label.bottom
		anchors.topMargin: 64 * wyrmgus.scale_factor
		text: qsTr("Units")
	}
	
	LargeText {
		id: buildings_label
		anchors.right: copper_label.left
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Buildings")
	}
	
	LargeText {
		id: copper_label
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: units_label.top
		text: qsTr("Copper")
	}
	
	LargeText {
		id: lumber_label
		anchors.left: copper_label.right
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Lumber")
	}
	
	LargeText {
		id: stone_label
		anchors.left: lumber_label.right
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Stone")
	}
	
	LargeText {
		id: kills_label
		anchors.left: stone_label.right
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Kills")
	}
	
	LargeText {
		id: razings_label
		anchors.left: kills_label.right
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.top: units_label.top
		text: qsTr("Razings")
	}
	
	ListView {
		id: player_results_list
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: units_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: continue_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		spacing: 16 * wyrmgus.scale_factor
		model: wyrmgus.game.results.player_results
		delegate: Item {
			height: player_name_label.height
			
			LargeText {
				id: player_name_label
				text: modelData.name + " (" + (modelData.this_player ? qsTr("You") : (modelData.ally ? qsTr("Ally") : (modelData.enemy ? qsTr("Enemy") : qsTr("Neutral")))) + ")"
				x: player_label.x - player_results_list.contentItem.x + player_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_units_label
				text: modelData.unit_count
				x: units_label.x - player_results_list.contentItem.x + units_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_buildings_label
				text: modelData.building_count
				x: buildings_label.x - player_results_list.contentItem.x + buildings_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_copper_label
				text: modelData.get_resource_count("copper")
				x: copper_label.x - player_results_list.contentItem.x + copper_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_lumber_label
				text: modelData.get_resource_count("lumber")
				x: lumber_label.x - player_results_list.contentItem.x + lumber_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_stone_label
				text: modelData.get_resource_count("stone")
				x: stone_label.x - player_results_list.contentItem.x + stone_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_kills_label
				text: modelData.kill_count
				x: kills_label.x - player_results_list.contentItem.x + kills_label.width / 2 - width / 2
				anchors.top: parent.top
			}
			
			LargeText {
				id: player_razings_label
				text: modelData.razing_count
				x: razings_label.x - player_results_list.contentItem.x + razings_label.width / 2 - width / 2
				anchors.top: parent.top
			}
		}
	}
	
	PreviousMenuButton {
		id: continue_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Continue")
		hotkey: "c"
		lua_command: "CleanPlayers();"
	}
}
