import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: tile
	
	readonly property int tile_size: 32 * wyrmgus.defines.scale_factor
	
	implicitWidth: tile_size
	implicitHeight: tile_size
	
	Image {
		id: base_terrain_image
		source: "image://tile/" + image_source
	}
	
	Repeater {
		model: transition_image_sources
		
		Image {
			id: base_terrain_transition_image
			source: "image://tile/" + modelData
		}
	}
	
	Image {
		id: overlay_terrain_image
		source: overlay_image_source.length > 0 && overlay_transition_image_sources.length == 0 ? "image://tile/" + overlay_image_source : "image://empty/"
	}
		
	Repeater {
		model: overlay_transition_image_sources
		
		Image {
			id: overlay_terrain_transition_image
			source: "image://tile/" + modelData
		}
	}
}
