import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: dialogue_dialog
	panel: 5
	
	property var dialogue_node_instance: null
	readonly property string text: dialogue_node_instance.text
	readonly property string icon: dialogue_node_instance.icon ? dialogue_node_instance.icon.identifier : ""
	readonly property string player_color: dialogue_node_instance.player_color ? dialogue_node_instance.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	readonly property var options: dialogue_node_instance.options
	readonly property var option_hotkeys: dialogue_node_instance.option_hotkeys
	readonly property var option_tooltips: dialogue_node_instance.option_tooltips
	readonly property int unit_number: dialogue_node_instance.unit_number
	
	property bool option_picked: false
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title.length > 0 ? title_item.bottom : parent.top
		anchors.topMargin: 16 * wyrmgus.scale_factor
		icon: dialogue_dialog.icon
		player_color: dialogue_dialog.player_color
		visible: icon.length > 0
	}
	
	ScrollableTextArea {
		id: text_label
		anchors.top: icon_button.visible ? icon_button.bottom : title_item.bottom
		anchors.topMargin: icon_button.visible ? 8 * wyrmgus.scale_factor : 16 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: option_grid.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: dialogue_dialog.text
	}
	
	Grid {
		id: option_grid
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		columns: 1
		columnSpacing: 0
		rowSpacing: 8 * wyrmgus.scale_factor
		
		Repeater {
			model: options
			
			LargeButton {
				id: option_button
				text: model.modelData
				hotkey: option_hotkeys[index]
				tooltip: format_text(option_tooltips[index])
				interface_style: dialogue_dialog.interface_style
				
				onClicked: {
					if (option_picked) {
						//an option was already picked
						return
					}
					
					option_picked = true
					dialogue_node_instance.call_option_effect(index)
				}
			}
		}
		
		function on_pressed_key(event) {
			for (var i = 0; i < option_grid.children.length; ++i) {
				var child_element = option_grid.children[i]
				
				if (child_element.on_pressed_key) {
					child_element.on_pressed_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
			
		function on_released_key(event) {
			for (var i = 0; i < option_grid.children.length; ++i) {
				var child_element = option_grid.children[i]
				
				if (child_element.on_released_key) {
					child_element.on_released_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
	}
	
	Connections {
		target: wyrmgus
		
		function onDialogue_node_closed(node_instance) {
			if (node_instance === dialogue_dialog.dialogue_node_instance) {
				dialogue_dialog.close()
				dialogue_dialog.destroy()
			}
		}
	}
}
