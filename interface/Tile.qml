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
	
	Image {
		id: overlay_terrain_image
		source: overlay_image_source.length > 0 ? "image://tile/" + overlay_image_source : "image://empty/"
	}
}
