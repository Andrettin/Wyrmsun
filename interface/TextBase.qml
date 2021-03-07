import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Text {
	id: label
	color: "white"
	font.family: berenika_font.name
	
	property int shadow_offset: 0
	
	layer.enabled: true
	layer.effect: DropShadow {
		horizontalOffset: label.shadow_offset
		verticalOffset: label.shadow_offset
		color: "#FF000000"
		radius: 1
		samples: 3
	}
}
