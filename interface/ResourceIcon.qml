import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	id: resource_icon
	source: resource ? ("image://resource_icon/" + resource.icon.identifier) : "image://empty/"
	cache: false
	visible: !wyrmgus.map_editor.running
	ToolTip.visible: mouse_area.containsMouse && tooltip.length > 0
	ToolTip.delay: 1000
	ToolTip.text: resource_icon.tooltip
	
	property var resource: null
	
	property int resource_stored: wyrmgus.this_player.get_resource_sync(resource)
	property int processing_bonus: wyrmgus.this_player.get_processing_bonus_sync(resource)
	readonly property string conversion_rates_string: resource.conversion_rates_string
	property string children_processing_bonus_string: wyrmgus.this_player.get_children_processing_bonus_string_sync(resource)
	
	property string tooltip: format_text(resource.name + "\n" + small_text(
		((resource_stored > 0 || resource.luxury === false) ? "\nStored: " + number_string(resource_stored) : "")
		+ (conversion_rates_string.length > 0 ? "\n" : "") + conversion_rates_string
		+ (processing_bonus > 0 ? ("\nProcessing Bonus: +" + processing_bonus + "%") : "")
		+ (children_processing_bonus_string.length > 0 ? "\n" : "") + children_processing_bonus_string
	))
	
	MouseArea {
		id: mouse_area
		anchors.fill: resource_icon
		hoverEnabled: true
		onEntered: {
			//display the tooltip further down so that the cursor isn't on top of it
			tooltip_manager.tooltip_y_override = 40 * wyrmgus.scale_factor
		}
		onExited: {
			tooltip_manager.tooltip_y_override = 0
		}
	}
	
	Connections {
		target: wyrmgus.this_player
		
		function onResource_stored_changed(resource_index, amount) {
			if (resource_index == resource.index) {
				resource_icon.resource_stored = amount
			}
		}
		
		function onResource_processing_bonus_changed(resource_index, bonus) {
			if (resource_index == resource.index) {
				resource_icon.processing_bonus = bonus
			}
		}
		
		function onResource_children_processing_bonus_string_changed(resource_index, str) {
			if (resource_index == resource.index) {
				resource_icon.children_processing_bonus_string = str
			}
		}
	}
}
