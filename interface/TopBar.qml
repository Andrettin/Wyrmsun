import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: top_bar
	height: image.height
	
	property string interface_style: "default"
	
	Image {
		id: image
		anchors.left: parent.left
		source: "image://interface/" + interface_style + "/top_bar"
		fillMode: Image.PreserveAspectCrop
		cache: false
		clip: true
	}
	
	ThinnestButton {
		id: menu_button
		anchors.left: parent.left
		anchors.leftMargin: 26 * wyrmgus.scale_factor
		anchors.top: parent.top
		anchors.topMargin: 1 * wyrmgus.scale_factor
		text: "Menu (F10)"
		hotkey: "f10"
		interface_style: parent.interface_style
		
		onClicked: {
			if (wyrmgus.map_editor.running) {
				wyrmgus.call_lua_command("RunInEditorMenu();")
			} else {
				game_menu_dialog.open()
			}
		}
	}
	
	Repeater {
		model: wyrmgus.main_resources
		
		Image {
			id: resource_icon
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			source: "image://resource_icon/" + model.modelData.icon.identifier
			cache: false
			visible: !wyrmgus.map_editor.running
		}
	}
	
	Repeater {
		model: wyrmgus.main_resources
		
		SmallText {
			id: resource_label
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * index) + 18) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			anchors.topMargin: 1 * wyrmgus.scale_factor
			text: number_string(wyrmgus.this_player.get_resource_sync(model.modelData))
			visible: !wyrmgus.map_editor.running
			
			Connections {
				target: wyrmgus.this_player
				
				function onResource_stored_changed(resource_index, amount) {
					if (resource_index == model.modelData.index) {
						resource_label.text = number_string(amount)
					}
				}
			}
		}
	}
	
	Repeater {
		model: wyrmgus.this_player.current_special_resources
		
		Image {
			id: resource_icon
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * 3) + (Math.min(18, 72 / wyrmgus.this_player.current_special_resources.length) * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			source: "image://resource_icon/" + model.modelData.icon.identifier
			cache: false
			visible: !wyrmgus.map_editor.running
		}
	}
}
