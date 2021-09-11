import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: music_slider
	width: music_volume_slider.width + 8 * wyrmgus.defines.scale_factor + music_radio_button.width
	height: music_volume_slider.height
	
	property string interface_style: "default"
	
	LabeledSlider { //FIXME: disable if music is turned off
		id: music_volume_slider
		anchors.left: parent.left
		anchors.top: parent.top
		text: "Music Volume"
		from: 0
		to: 255
		value: wyrmgus.preferences.music_volume
		step_size: 25.5
		interface_style: music_slider.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.music_volume = value
		}
	}
	
	LabeledRadioImageButton {
		id: music_radio_button
		anchors.left: music_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: music_volume_slider.top
		anchors.topMargin: music_volume_slider.slider_item.y + (music_radio_button.height / 2) - (music_volume_slider.slider_item.height / 2)
		text: "Enabled"
		checked: wyrmgus.preferences.music_enabled
		
		onCheckedChanged: {
			wyrmgus.preferences.music_enabled = checked
		}
	}
}
