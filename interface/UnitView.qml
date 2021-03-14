import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	id: unit_view
	
	property variant unit: null
	
	source: unit ? "image://unit/" + unit.image_source : "image://empty/"
	x: unit ? unit.tile_x * wyrmgus.defines.scaled_tile_width - (width - (wyrmgus.defines.scaled_tile_width * unit.tile_width)) / 2 : 0
	y: unit ? unit.tile_y * wyrmgus.defines.scaled_tile_height - (height - wyrmgus.defines.scaled_tile_height * unit.tile_height) / 2 : 0
	z: 40
}
