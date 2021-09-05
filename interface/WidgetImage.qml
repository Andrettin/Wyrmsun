import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
	source: "image://interface/" + interface_style + "/" + widget_type + "/" + (grayed ? "grayed" : (pressed ? "pressed" : "normal"))
	fillMode: Image.Pad
	
	property string widget_type: ""
	property string interface_style: "default"
	property bool pressed: false
	property bool grayed: false
}
