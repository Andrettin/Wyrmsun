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
		
		Item {
			id: resource_item
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			width: resource_label.x + resource_label.width
			height: resource_icon.height
			visible: !wyrmgus.map_editor.running
			ToolTip.visible: resource_mouse_area.containsMouse && resource_icon.tooltip.length > 0
			ToolTip.delay: 1000
			ToolTip.text: resource_icon.tooltip
			
			ResourceIcon {
				id: resource_icon
				anchors.left: parent.left
				anchors.top: parent.top
				resource: model.modelData
			}
			
			SmallText {
				id: resource_label
				anchors.left: resource_icon.right
				anchors.leftMargin: 4 * wyrmgus.scale_factor
				anchors.top: parent.top
				anchors.topMargin: 1 * wyrmgus.scale_factor
				text: stored_resource_label_string(resource_icon.resource_stored)
			}
			
			MouseArea {
				id: resource_mouse_area
				anchors.fill: resource_item
				hoverEnabled: true
				onEntered: {
					//display the tooltip further down so that the cursor isn't on top of it
					tooltip_manager.tooltip_y_override = 40 * wyrmgus.scale_factor
				}
				onExited: {
					tooltip_manager.tooltip_y_override = 0
				}
			}
			
			function stored_resource_label_string(amount) {
				if (amount >= 1000000) {
					return number_string(amount / 1000) + "k"
				}
				
				return number_string(amount)
			}
		}
	}
	
	Repeater {
		model: wyrmgus.this_player.current_special_resources
		
		ResourceIcon {
			id: resource_icon
			anchors.left: top_bar.left
			anchors.leftMargin: (154 + (75 * 3) + (Math.min(18, 72 / wyrmgus.this_player.current_special_resources.length) * index)) * wyrmgus.scale_factor
			anchors.top: top_bar.top
			resource: model.modelData
		}
	}
	
	ResourceIconBase {
		id: age_icon
		anchors.left: top_bar.left
		anchors.leftMargin: (154 + (75 * 5)) * wyrmgus.scale_factor
		anchors.top: top_bar.top
		icon: wyrmgus.this_player.age ? wyrmgus.this_player.age.icon.identifier : ""
	}
	
	SmallText {
		id: age_label
		anchors.left: age_icon.right
		anchors.leftMargin: 4 * wyrmgus.scale_factor
		anchors.top: top_bar.top
		anchors.topMargin: 1 * wyrmgus.scale_factor
		text: wyrmgus.this_player.age ? wyrmgus.this_player.age.name : ""
	}
	
	Item {
		id: food_item
		anchors.left: top_bar.right
		anchors.leftMargin: -138 * wyrmgus.scale_factor
		anchors.top: top_bar.top
		width: food_label.x + food_label.width
		height: food_icon.height
		visible: !wyrmgus.map_editor.running
		ToolTip.visible: food_mouse_area.containsMouse && food_icon.tooltip.length > 0
		ToolTip.delay: 1000
		ToolTip.text: food_icon.tooltip
		
		ResourceIconBase {
			id: food_icon
			anchors.left: parent.left
			anchors.top: parent.top
			icon: "food"
			tooltip: format_text("Food" + "\n" + small_text(
				"\nPopulation: " + number_string(wyrmgus.this_player.population)
			))
		}
		
		SmallText {
			id: food_label
			anchors.left: food_icon.right
			anchors.leftMargin: 4 * wyrmgus.scale_factor
			anchors.top: parent.top
			anchors.topMargin: 1 * wyrmgus.scale_factor
			text: wyrmgus.this_player.demand > wyrmgus.this_player.supply ? highlight(base_text) : base_text
			
			readonly property string base_text: wyrmgus.this_player.demand + "/" + wyrmgus.this_player.supply
		}		
		
		MouseArea {
			id: food_mouse_area
			anchors.fill: food_item
			hoverEnabled: true
			onEntered: {
				//display the tooltip further down so that the cursor isn't on top of it
				tooltip_manager.tooltip_y_override = 40 * wyrmgus.scale_factor
			}
			onExited: {
				tooltip_manager.tooltip_y_override = 0
			}
		}
	}
	
	function on_released_key(event) {
		for (var i = 0; i < top_bar.children.length; ++i) {
			var child_element = top_bar.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					return
				}
			}
		}
	}
}
