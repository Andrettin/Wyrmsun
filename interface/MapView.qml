import QtQuick 2.12
import QtQuick.Controls 2.12
import map_grid_model 1.0

Item {
	id: map_view
	anchors.fill: parent
	focus: true
	
	readonly property int tile_size: 32 * wyrmgus.defines.scale_factor
	property int map_width: 512
	property int map_height: 512
	property var tile_data: []
	property bool tile_data_initialized: false
	
	Rectangle {
		anchors.fill: parent
		color: "black"
	}
	
	TableView {
		id: map
		anchors.fill: parent
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		contentWidth: tile_size * map_width
		contentHeight: tile_size * map_height
		boundsBehavior: Flickable.StopAtBounds
		contentX: map_overlay.contentX
		contentY: map_overlay.contentY
		model: MapGridModel {
			map_layer: 0
		}
		delegate: Tile {
			frameCount: image_frame_count
			source: "image://tile/" + image_source
			currentFrame: frame
		}
	}
	
	Flickable {
		id: map_overlay
		anchors.fill: parent
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		contentWidth: tile_size * map_width
		contentHeight: tile_size * map_height
		boundsBehavior: Flickable.StopAtBounds
		
		Unit {
			x: 4 * tile_size
			y: 5 * tile_size
		}
	}
		
	Component.onCompleted: {
		for (var x = 0; x < map_width; ++x) {
			map_view.tile_data.push([])
			
			for (var y = 0; y < map_height; ++y) {
				map_view.tile_data[x].push({"frame": random(3) + 9})
			}
		}
		
		map_view.tile_data_initialized = true
	}
}
