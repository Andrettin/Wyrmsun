import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: labeled_slider
	width: slider.width
	height: label.height + 8 * wyrmgus.scale_factor + slider.height + 4 * wyrmgus.scale_factor + min_label.height
	
	property string interface_style: "default"
	property string text: ""
	property string min_text: "min"
	property string max_text: "max"
	property real from: 0
	property real to: 255
	property real step_size: to / 10
	property real value: to + from / 2
	readonly property var slider_item: slider
	
	NormalText {
		id: label
		text: parent.text
		anchors.top: parent.top
		anchors.left: parent.left
	}
	
	CustomSlider {
		id: slider
		anchors.left: parent.left
		anchors.top: label.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		from: parent.from
		to: parent.to
		value: parent.value
		step_size: parent.step_size
		interface_style: labeled_slider.interface_style
		
		onValueChanged: {
			parent.value = value
		}
	}
	
	TinyText {
		id: min_label
		text: parent.min_text
		anchors.top: slider.bottom
		anchors.topMargin: 4 * wyrmgus.scale_factor
		anchors.left: slider.left
	}
	
	TinyText {
		id: max_label
		text: parent.max_text
		anchors.top: slider.bottom
		anchors.topMargin: 4 * wyrmgus.scale_factor
		anchors.right: slider.right
	}
}
