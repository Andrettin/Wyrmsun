import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: image_frame
	clip: true
	
	property string source: ""
	property bool mirror: false
	property int frame: 0
	readonly property int frame_x: frame % width
	readonly property int frame_y: frame / width
	
	Image {
		source: image_frame.source
		mirror: image_frame.mirror
		x: -(image_frame.frame_x * image_frame.width)
		y: -(image_frame.frame_y * image_frame.height)
	}
}
