import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: sound_effects_slider
	width: sound_effects_volume_slider.width + 8 * wyrmgus.defines.scale_factor + sound_effects_radio_button.width
	height: sound_effects_volume_slider.height
	
	property string interface_style: "default"
	
	LabeledSlider { //FIXME: disable if sound effects are turned off
		id: sound_effects_volume_slider
		anchors.left: parent.left
		anchors.top: parent.top
		text: "Sound Effects Volume"
		from: 0
		to: 255
		value: wyrmgus.preferences.sound_effects_volume
		step_size: 25.5
		interface_style: sound_effects_slider.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.sound_effects_volume = value
		}
	}
	
	LabeledRadioImageButton {
		id: sound_effects_radio_button
		anchors.left: sound_effects_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: sound_effects_volume_slider.top
		anchors.topMargin: sound_effects_volume_slider.slider_item.y + (sound_effects_radio_button.height / 2) - (sound_effects_volume_slider.slider_item.height / 2)
		text: "Enabled"
		checked: wyrmgus.preferences.sound_effects_enabled
		
		onCheckedChanged: {
			wyrmgus.preferences.sound_effects_enabled = checked
		}
	}
}
