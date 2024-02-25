import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import ".."
import "../dialogs"

MenuBase {
	id: new_map_menu
	title: qsTr("Map Editor")
	
	Pane {
		anchors.fill: parent
		focusPolicy: Qt.ClickFocus
		background: null
	}
	
	NormalText {
		id: map_description_label
		anchors.bottom: map_description_text_field.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		anchors.left: create_map_button.left
		text: qsTr("Map Description") + ":"
	}
	
	CustomTextField {
		id: map_description_text_field
		anchors.bottom: width_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: create_map_button.left
		anchors.right: create_map_button.right
	}
	
	NormalText {
		id: width_label
		anchors.bottom: height_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: create_map_button.left
		text: qsTr("Width") + ":"
	}
	
	CustomTextField {
		id: width_text_field
		anchors.verticalCenter: width_label.verticalCenter
		anchors.left: width_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		width: 64 * wyrmgus.scale_factor
		text: "128"
		validator: IntValidator {
			bottom: 32
			top: wyrmgus.max_map_width
		}
	}
	
	NormalText {
		id: height_label
		anchors.bottom: create_map_button.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		anchors.left: create_map_button.left
		text: qsTr("Height") + ":"
	}
	
	CustomTextField {
		id: height_text_field
		anchors.verticalCenter: height_label.verticalCenter
		anchors.left: width_label.right
		anchors.leftMargin: 16 * wyrmgus.scale_factor
		width: 64 * wyrmgus.scale_factor
		text: "128"
		validator: IntValidator {
			bottom: 32
			top: wyrmgus.max_map_height
		}
	}
	
	LargeButton {
		id: create_map_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: qsTr("Create Map")
		hotkey: "c"
		
		onClicked: {
			if (width_text_field.text.length === 0) {
				error_dialog.text = "The map width must be provided."
				error_dialog.open()
				return
			}
			
			if (height_text_field.text.length === 0) {
				error_dialog.text = "The map height must be provided."
				error_dialog.open()
				return
			}
			
			var width = parseInt(width_text_field.text, 10)
			
			if (width < 32) {
				error_dialog.text = "The map width must be at least 32."
				error_dialog.open()
				return
			}
			
			var height = parseInt(height_text_field.text, 10)
			
			if (height < 32) {
				error_dialog.text = "The map height must be at least 32."
				error_dialog.open()
				return
			}
			
			if (width > wyrmgus.max_map_width) {
				error_dialog.text = "The map width must be at most " + wyrmgus.max_map_width + "."
				error_dialog.open()
				return
			}
			
			if (height > wyrmgus.max_map_height) {
				error_dialog.text = "The map height must be at most " + wyrmgus.max_map_height + "."
				error_dialog.open()
				return
			}
			
			wyrmgus.call_lua_command("LoadTileModels(\"scripts/tilesets/conifer_forest_summer.lua\");")
			wyrmgus.map_editor.start_new_async(map_description_text_field.text, width, height)
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: create_map_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
	}
	
	GenericDialog {
		id: error_dialog
		title: qsTr("Error")
	}
}
