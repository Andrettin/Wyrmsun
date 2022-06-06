import QtQuick 2.12
import QtQuick.Controls 2.12
import map_grid_model 1.0
import unit_list_model 1.0

Rectangle {
	id: map_view_underlay
	anchors.fill: parent
	color: "black"
	
	readonly property int tile_size: wyrmgus.defines.tile_size.width * wyrmgus.scale_factor
	
	/*
	TableView {
		id: map
		anchors.top: parent.top
		anchors.topMargin: wyrmgus.defines.map_area_top_margin * wyrmgus.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: wyrmgus.defines.map_area_bottom_margin * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.right: parent.right
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		contentWidth: tile_size * wyrmgus.map_info.map_width
		contentHeight: tile_size * wyrmgus.map_info.map_height
		contentX: wyrmgus.map_view_top_left_pixel_pos.x
		contentY: wyrmgus.map_view_top_left_pixel_pos.y
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		interactive: false //scrolled via the engine
		model: MapGridModel {
			map_layer: 0
		}
		delegate: TileView {}
		
		Repeater {
			model: UnitListModel {
				map_layer: 0
			}
			
			UnitView {
			}
		}
	}
	*/
}
