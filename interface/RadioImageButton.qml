import QtQuick 2.12
import QtQuick.Controls 2.12

WidgetBase {
	id: radio_button
	width: image.width
	height: image.height
	widget_type: "radio_button/" + (checked ? "checked" : "unchecked")
	mouse_area_anchor_source: radio_button
	
	property bool checked: false
	
	onClicked: {
		checked = !checked
	}
}
