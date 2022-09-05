import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: population_dialog
	panel: 5
	title: qsTr("Population")
	pause_game: false
	
	property var settlement_game_data: null
	property var population_units: []
	
	IconCommandButton {
		id: population_icon_button
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.top: parent.bottom //outside of the dialog (and thus not visible); this is used just to get the horizontal anchoring right for the labels
		icon: "icon_toughness"
		player_color: wyrmgus.this_player.player_color.identifier
	}
	
	NormalText {
		id: population_type_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.left: population_icon_button.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Type")
	}
	
	NormalText {
		id: population_label
		anchors.top: population_type_label.top
		anchors.left: population_type_label.left
		anchors.leftMargin: 72 * wyrmgus.scale_factor
		text: qsTr("Population")
	}
	
	NormalText {
		id: employment_label
		anchors.top: population_type_label.top
		anchors.left: population_label.left
		anchors.leftMargin: 88 * wyrmgus.scale_factor
		text: qsTr("Employment")
	}
	
	ListView {
		id: population_unit_list
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: population_type_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		leftMargin: 8 * wyrmgus.scale_factor
		rightMargin: 8 * wyrmgus.scale_factor
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: population_dialog.population_units
		delegate: Item {
			height: population_type_icon_button.height
			
			readonly property var population_unit: modelData
			readonly property var population_type: population_unit.type
			readonly property var employment_type: population_unit.employment_type
			readonly property string employment_name: employment_type ? employment_type.name : "Unemployed"
			readonly property var input_resource: population_unit.input_resource
			readonly property var output_resource: population_unit.output_resource
			
			IconCommandButton {
				id: population_type_icon_button
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
				icon: population_type.icon.identifier
				player_color: wyrmgus.this_player.player_color.identifier
				tooltip: format_text(population_type.name + "\n" + small_text(
					("\nPopulation: " + number_string(population_unit.population))
					+ ("\nEmployment: " + employment_name)
					+ (input_resource ? "\nInput: " + input_resource.name : "")
					+ (output_resource ? ("\nOutput: " + output_resource.name) : "")
				))
			}
			
			NormalText {
				text: population_type.name
				x: population_type_label.x - population_unit_list.contentItem.x - population_unit_list.x
				anchors.verticalCenter: parent.verticalCenter
			}
			
			NormalText {
				text: number_string(population_unit.population)
				x: population_label.x - population_unit_list.contentItem.x - population_unit_list.x + population_label.width - width
				anchors.verticalCenter: parent.verticalCenter
			}
			
			NormalText {
				text: employment_name
				x: employment_label.x - population_unit_list.contentItem.x - population_unit_list.x
				anchors.verticalCenter: parent.verticalCenter
			}
		}
	}
	
	LargeButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("OK")
		hotkey: "o"
		interface_style: population_dialog.interface_style
		
		onClicked: {
			population_dialog.close()
			population_dialog.destroy()
		}
	}
	
	Connections {
		target: settlement_game_data
		
		function onPopulation_units_changed(population_units) {
			population_dialog.population_units = population_units
		}
	}
}
