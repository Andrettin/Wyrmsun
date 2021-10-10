import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	id: widget_image
	source: reloading ? "image://empty/" : "image://interface/" + interface_style + "/" + widget_type + "/" + (grayed ? "grayed" : (pressed ? "pressed" : "normal"))
	fillMode: Image.Pad
	cache: false
	
	property string widget_type: ""
	property string interface_style: "default"
	property bool pressed: false
	property bool grayed: false
	property bool reloading: false
	
	Connections {
		target: wyrmgus
		
		function onScale_factor_changed() {
			widget_image.reloading = true
			widget_image.reloading = false
		}
	}
}
