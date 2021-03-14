import QtQuick 2.12
import QtQuick.Controls 2.12
import map_grid_model 1.0
import unit_list_model 1.0

Item {
	id: map_view
	anchors.fill: parent
	focus: true
	
	readonly property int tile_size: 32 * wyrmgus.defines.scale_factor
	property int map_width: 512
	property int map_height: 512
	
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
		model: MapGridModel {
			map_layer: 0
		}
		delegate: TileView {}
		
		Repeater {
			model: UnitListModel {
				map_layer: 0
			}
			
			UnitView {
				unit: model.unit
			}
		}
	}

	Component.onCompleted: {
		wyrmgus.on_map_view_created()
	}
}
