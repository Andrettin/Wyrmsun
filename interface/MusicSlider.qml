import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: music_slider
	width: music_volume_slider.width + 8 * wyrmgus.defines.scale_factor + music_radio_button.width
	height: music_volume_label.height + 8 * wyrmgus.defines.scale_factor + music_volume_slider.height + 4 * wyrmgus.defines.scale_factor + music_volume_min_label.height
	
	property string interface_style: "default"
	
	NormalText {
		id: music_volume_label
		text: "Music Volume"
		anchors.top: parent.top
		anchors.left: parent.left
	}
	
	CustomSlider { //FIXME: disable if music is turned off
		id: music_volume_slider
		anchors.left: parent.left
		anchors.top: music_volume_label.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		from: 0
		to: 255
		value: wyrmgus.preferences.music_volume
		step_size: 25.5
		interface_style: music_slider.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.music_volume = value
		}
	}
	
	RadioImageButton {
		id: music_radio_button
		anchors.left: music_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: music_volume_slider.verticalCenter
		text: "Enabled"
		checked: wyrmgus.preferences.music_enabled
		
		onCheckedChanged: {
			wyrmgus.preferences.music_enabled = checked
		}
	}
	
	TinyText {
		id: music_volume_min_label
		text: "min"
		anchors.top: music_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.left: music_volume_slider.left
	}
	
	TinyText {
		id: music_volume_max_label
		text: "max"
		anchors.top: music_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.right: music_volume_slider.right
	}
}
