import QtQuick 2.12
import QtQuick.Controls 2.12

AnimatedSprite {
	id: tile
	
	readonly property int tile_size: 32 * wyrmgus.defines.scale_factor
	
	implicitWidth: tile_size
	implicitHeight: tile_size
	frameWidth: tile_size
	frameHeight: tile_size
	paused: true
	interpolate: false
}
