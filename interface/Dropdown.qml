import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: dropdown
	width: dropdown_bar.image.width
	height: dropdown_bar.height
	
	property bool expanded: false
	property var entries: []
	property int selected_entry_index: -1
	
	onEntriesChanged: {
		if (entries.length > 0) {
			if (selected_entry_index == -1 || selected_entry_index >= entries.length) {
				selected_entry_index = 0
			}
		} else {
			selected_entry_index = -1
		}
	}
		
	DropdownBar {
		id: dropdown_bar
		width: dropdown.width
		text: selected_entry_index !== -1 ? get_entry_name(get_selected_entry()) : ""
		
		onClicked: {
			dropdown.expanded = !dropdown.expanded
		}
	}
	
	DownArrowButton {
		id: down_arrow_button
		anchors.top: parent.top
		anchors.right: parent.right
		pressed: mouse_area_element.containsPress || hotkey_pressed || dropdown.expanded
		
		onClicked: {
			dropdown.expanded = !dropdown.expanded
		}
	}
	
	Repeater {
		model: dropdown.entries
			
		DropdownBar {
			x: 0
			y: dropdown.height * (index + 1)
			width: dropdown.width
			visible: dropdown.expanded
			text: get_entry_name(dropdown.entries[index])
			
			onClicked: {
				dropdown.expanded = false
				dropdown.selected_entry_index = index
			}
		}
	}
	
	function on_clicked_outside() {
		dropdown.expanded = false
	}
	
	function get_selected_entry() {
		if (dropdown.selected_entry_index == -1) {
			return null
		}
		
		return dropdown.entries[dropdown.selected_entry_index]
	}
	
	//override this if the entry list is not a string list
	function get_entry_name(entry) {
		return entry
	}
}
