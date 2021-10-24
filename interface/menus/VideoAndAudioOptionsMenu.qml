import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import ".."

MenuBase {
	id: video_and_audio_options_menu
	title: "Video and Audio Options"
	
	NormalText {
		id: scale_factor_label
		text: "Scale Factor:"
		anchors.left: scale_factor_dropdown.left
		anchors.bottom: scale_factor_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
	
	Dropdown {
		id: scale_factor_dropdown
		anchors.left: sound_effects_slider.left
		anchors.bottom: wyrmgus.preferences.fullscreen ? sound_effects_slider.top : window_size_label.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: 55 * wyrmgus.scale_factor
		model: ["1x", "1.5x", "1.7x", "2x"]
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.scale_factor_string + "x")
		}
		
		onSelectedEntryChanged: {
			wyrmgus.preferences.scale_factor_string = selectedEntry.substring(0, selectedEntry.length - 1)
		}
	}
	
	NormalText {
		id: window_size_label
		text: "Window Size:"
		anchors.left: window_size_dropdown.left
		anchors.bottom: window_size_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		visible: !wyrmgus.preferences.fullscreen
	}
	
	Dropdown {
		id: window_size_dropdown
		anchors.left: sound_effects_slider.left
		anchors.bottom: sound_effects_slider.top
		anchors.bottomMargin: 16 * wyrmgus.scale_factor
		width: 100 * wyrmgus.scale_factor
		model: get_entries(wyrmgus.scale_factor)
		visible: !wyrmgus.preferences.fullscreen
		
		property bool updating_entries: false
		
		onModelChanged: {
			updating_entries = false
			
			if (wyrmgus.preferences.window_maximized) {
				set_selected_entry("Maximized")
			} else {
				var window_size_str = wyrmgus.preferences.window_width + "x" + wyrmgus.preferences.window_height
				if (window_size_dropdown.model.indexOf(window_size_str) !== -1) {
					set_selected_entry(window_size_str)
				} else {
					window_size_dropdown.currentIndex = 0
				}
			}
		}
		
		onSelectedEntryChanged: {
			if (updating_entries || !visible) {
				return
			}
			
			if (selectedEntry == "Maximized") {
				wyrmgus.preferences.window_maximized = true
				
				if (window.visibility !== Window.Maximized) {
					window.showMaximized()
				}
			} else {
				wyrmgus.preferences.window_maximized = false
				
				if (window.visibility === Window.Maximized) {
					window.showNormal()
				}
				
				var size_array = selectedEntry.split("x")
				wyrmgus.preferences.window_width = size_array[0]
				wyrmgus.preferences.window_height = size_array[1]
				window.width = wyrmgus.preferences.window_width
				window.height = wyrmgus.preferences.window_height
			}
		}
		
		function get_entries(scale_factor) {
			updating_entries = true
			
			var entries = []
			
			var potential_entries = [
				"800x600",
				"1024x768",
				"1152x864",
				"1280x600",
				"1280x720",
				"1280x768",
				"1280x800",
				"1280x960",
				"1280x1024",
				"1360x768",
				"1366x768",
				"1400x1050",
				"1440x900",
				"1600x900",
				"1680x1050",
				"1920x1080"
			]
			
			var minimum_width = get_minimum_window_width(scale_factor)
			var minimum_height = get_minimum_window_height(scale_factor)
			
			for (var i = 0; i < potential_entries.length; ++i) {
				var potential_entry = potential_entries[i]
				
				var size_array = potential_entry.split("x")
				
				if (size_array[0] < minimum_width) {
					continue
				}
				
				if (size_array[1] < minimum_height) {
					continue
				}
				
				entries.push(potential_entry)
			}
			
			entries.push("Maximized")
			
			return entries
		}
	}
	
	SoundEffectsSlider {
		id: sound_effects_slider
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
	}
	
	MusicSlider {
		id: music_slider
		anchors.left: sound_effects_slider.left
		anchors.top: sound_effects_slider.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
	}
	
	LabeledRadioImageButton {
		id: fullscreen_radio_button
		anchors.left: music_slider.left
		anchors.top: music_slider.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: "Fullscreen"
		checked: wyrmgus.preferences.fullscreen
		
		onCheckedChanged: {
			wyrmgus.preferences.fullscreen = checked
			
			if (wyrmgus.preferences.fullscreen) {
				window.showNormal()
				window.width = Screen.width
				window.height = Screen.height + 1 //it needs to be +1 otherwise it becomes (non-borderless) fullscreen automatically
				window.x = 0
				window.y = 0
			} else {
				window.showMaximized()
				window_size_dropdown.set_selected_entry("Maximized")
			}
		}
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: fullscreen_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
