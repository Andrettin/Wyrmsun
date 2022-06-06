import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: tile
	
	implicitWidth: tile_size
	implicitHeight: tile_size
	
	property real tile_red_change: red_change / 255.0
	property real tile_green_change: green_change / 255.0
	property real tile_blue_change: blue_change / 255.0
	
	readonly property string fragment_shader_source: "file:///" + wyrmgus.shaders_path + "/fragment_shader.glsl"
	readonly property string vertex_shader_source: "file:///" + wyrmgus.shaders_path + "/vertex_shader.glsl"
	
	TileImage {
		id: base_terrain_image
		tile_image_source: "image://tile/" + image_source
		tile_red_change: tile.tile_red_change
		tile_green_change: tile.tile_green_change
		tile_blue_change: tile.tile_blue_change
	}
	
	Repeater {
		model: transition_image_sources
		
		TileImage {
			id: base_terrain_transition_image
			tile_image_source: "image://tile/" + modelData
			tile_red_change: transition_red_changes[index] / 255.0
			tile_green_change: transition_green_changes[index] / 255.0
			tile_blue_change: transition_blue_changes[index] / 255.0
		}
	}
	
	TileImage {
		id: overlay_terrain_image
		tile_image_source: overlay_image_source.length > 0 && overlay_transition_image_sources.length == 0 ? "image://tile/" + overlay_image_source : "image://empty/"
		tile_red_change: tile.tile_red_change
		tile_green_change: tile.tile_green_change
		tile_blue_change: tile.tile_blue_change
	}
	
	Repeater {
		model: overlay_transition_image_sources
		
		TileImage {
			id: overlay_terrain_transition_image
			tile_image_source: "image://tile/" + modelData
			tile_red_change: tile.tile_red_change
			tile_green_change: tile.tile_green_change
			tile_blue_change: tile.tile_blue_change
		}
	}
	
	Repeater {
		model: overlay_transition_elevation_image_sources
		
		TileImage {
			id: overlay_terrain_transition_elevation_image
			tile_image_source: "image://tile/" + modelData
			tile_red_change: tile.tile_red_change
			tile_green_change: tile.tile_green_change
			tile_blue_change: tile.tile_blue_change
		}
	}
}
