import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	id: unit_view
	
	visible: image_source.length > 0
	source: visible ? "image://unit/" + image_source : "image://empty/"
	mirror: visible ? mirrored_image : false
	x: visible ? tile_pos.x * wyrmgus.defines.scaled_tile_width - (width - (wyrmgus.defines.scaled_tile_width * tile_size.width)) / 2 : 0
	y: visible ? tile_pos.y * wyrmgus.defines.scaled_tile_height - (height - wyrmgus.defines.scaled_tile_height * tile_size.height) / 2 : 0
	z: 40
}
