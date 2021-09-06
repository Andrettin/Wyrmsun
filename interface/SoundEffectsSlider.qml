import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: sound_effects_slider
	width: sound_effects_volume_slider.width + 8 * wyrmgus.defines.scale_factor + sound_effects_radio_button.width
	height: sound_effects_volume_label.height + 8 * wyrmgus.defines.scale_factor + sound_effects_volume_slider.height + 4 * wyrmgus.defines.scale_factor + sound_effects_volume_min_label.height
	
	property string interface_style: "default"
	
	NormalText {
		id: sound_effects_volume_label
		text: "Sound Effects Volume"
		anchors.top: parent.top
		anchors.left: parent.left
	}
	
	CustomSlider { //FIXME: disable if sound effects are turned off
		id: sound_effects_volume_slider
		anchors.left: parent.left
		anchors.top: sound_effects_volume_label.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		from: 0
		to: 255
		value: wyrmgus.preferences.sound_effects_volume
		step_size: 25.5
		interface_style: sound_effects_slider.interface_style
		
		onValueChanged: {
			wyrmgus.preferences.sound_effects_volume = value
		}
	}
	
	RadioImageButton {
		id: sound_effects_radio_button
		anchors.left: sound_effects_volume_slider.right
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.verticalCenter: sound_effects_volume_slider.verticalCenter
		text: "Enabled"
		checked: wyrmgus.preferences.sound_effects_enabled
		
		onCheckedChanged: {
			wyrmgus.preferences.sound_effects_enabled = checked
		}
	}
	
	TinyText {
		id: sound_effects_volume_min_label
		text: "min"
		anchors.top: sound_effects_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.left: sound_effects_volume_slider.left
	}
	
	TinyText {
		id: sound_effects_volume_max_label
		text: "max"
		anchors.top: sound_effects_volume_slider.bottom
		anchors.topMargin: 4 * wyrmgus.defines.scale_factor
		anchors.right: sound_effects_volume_slider.right
	}
}
