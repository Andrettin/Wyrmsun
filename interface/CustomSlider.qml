import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: custom_slider
	width: slider.width + left_arrow_button.width + right_arrow_button.width
	height: slider.height
	
	property real from: 0
	property real to: 255
	property real value: to + from / 2
	property real step_size: to / 10
	property string interface_style: "default"
	
	Slider {
		id: slider
		anchors.horizontalCenter: parent.horizontalCenter
		from: parent.from
		to: parent.to
		value: parent.value
		padding: 0
		
		background: WidgetImage {
			id: slider_bar
			widget_type: "slider_bar"
			interface_style: custom_slider.interface_style
		}
		
		handle: WidgetImage {
			id: slider_marker
			x: slider.visualPosition * (slider.availableWidth - width)
			y: slider.availableHeight / 2 - height / 2
			widget_type: "slider_marker"
			interface_style: custom_slider.interface_style
		}
		
		onValueChanged: {
			parent.value = value
		}
	}
	
	LeftArrowButton {
		id: left_arrow_button
		anchors.right: slider.left
		interface_style: custom_slider.interface_style
		
		onClicked: {
			slider.value = Math.max(slider.value - step_size, custom_slider.from)
		}
	}
	
	RightArrowButton {
		id: right_arrow_button
		anchors.left: slider.right
		interface_style: custom_slider.interface_style
		
		onClicked: {
			slider.value = Math.min(slider.value + step_size, custom_slider.to)
		}
	}
}
