import QtQuick 2.12
import QtQuick.Controls 2.12

WidgetBase {
	id: radio_button
	width: image.width + 4 * wyrmgus.defines.scale_factor + label.width
	height: Math.max(image.height, label.height)
	widget_type: "radio_button/" + (checked ? "checked" : "unchecked")
	mouse_area_anchor_source: radio_button
	
	property bool checked: false
	
	NormalText {
		id: label
		text: parent.text
		anchors.right: parent.right
		anchors.verticalCenter: parent.verticalCenter
	}
	
	onClicked: {
		checked = !checked
	}
}
