import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: gameplay_options_menu
	title: "Gameplay Options"
	
	NormalText {
		id: hotkey_setup_label
		text: "Hotkey Setup:"
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: hotkey_setup_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: hotkey_setup_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: autosave_radio_button.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		width: 250 * wyrmgus.defines.scale_factor
		model: wyrmgus.get_hotkey_setups()
		
		onModelChanged: {
			set_selected_entry(wyrmgus.preferences.get_hotkey_setup_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_hotkey_setup_index() !== selectedEntry) {
				wyrmgus.preferences.set_hotkey_setup_index(selectedEntry)
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_hotkey_setup_name(entry)
		}
	}
	
	RadioImageButton {
		id: autosave_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: show_hero_symbol_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Autosave"
		checked: wyrmgus.preferences.autosave
		
		onCheckedChanged: {
			wyrmgus.preferences.autosave = checked
		}
	}
	
	RadioImageButton {
		id: show_hero_symbol_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: show_messages_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Show Hero Symbol"
		checked: wyrmgus.preferences.hero_symbol
		
		onCheckedChanged: {
			wyrmgus.preferences.hero_symbol = checked
		}
	}
	
	RadioImageButton {
		id: show_messages_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.bottom: show_pathlines_radio_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Show Messages"
		checked: wyrmgus.preferences.show_messages
		
		onCheckedChanged: {
			wyrmgus.preferences.show_messages = checked
		}
	}
	
	RadioImageButton {
		id: show_pathlines_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.verticalCenter: parent.verticalCenter
		text: "Show Pathlines"
		checked: wyrmgus.preferences.pathlines
		
		onCheckedChanged: {
			wyrmgus.preferences.pathlines = checked
		}
	}
	
	RadioImageButton {
		id: show_player_color_circle_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_pathlines_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Show Player Color Circle"
		checked: wyrmgus.preferences.player_color_circle
		
		onCheckedChanged: {
			wyrmgus.preferences.player_color_circle = checked
		}
	}
	
	RadioImageButton {
		id: show_resource_bar_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_player_color_circle_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Show Resource Bar"
		checked: wyrmgus.preferences.resource_bar
		
		onCheckedChanged: {
			wyrmgus.preferences.resource_bar = checked
		}
	}
	
	RadioImageButton {
		id: show_tips_radio_button
		anchors.left: hotkey_setup_dropdown.left
		anchors.top: show_resource_bar_radio_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Show Tips"
		checked: wyrmgus.preferences.show_tips
		
		onCheckedChanged: {
			wyrmgus.preferences.show_tips = checked
		}
	}
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: show_tips_radio_button.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			wyrmgus.preferences.save()
			menu_stack.pop()
		}
	}
}
