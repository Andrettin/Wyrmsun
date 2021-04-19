import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: dropdown
	width: dropdown_bar.image.width
	height: dropdown_bar.height
	z: 1 //the expanded dropdown should be above other elements
	
	property bool expanded: false
	property var entries: []
	property int selectedEntryIndex: -1
	property var selectedEntry: selectedEntryIndex !== -1 ? entries[selectedEntryIndex] : null
	
	onEntriesChanged: {
		if (entries.length > 0) {
			if (selectedEntryIndex == -1 || selectedEntryIndex >= entries.length) {
				selectedEntryIndex = 0
			}
		} else {
			selectedEntryIndex = -1
		}
	}
		
	DropdownBar {
		id: dropdown_bar
		width: dropdown.width
		text: selectedEntry !== null ? get_entry_name(selectedEntry) : ""
		
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
				dropdown.selectedEntryIndex = index
			}
		}
	}
	
	function on_clicked_outside() {
		dropdown.expanded = false
	}
	
	//override this if the entry list is not a string list
	function get_entry_name(entry) {
		return entry
	}
	
	function set_selected_entry(chosen_entry) {
		if (chosen_entry == null) {
			return
		}
		
		for (var i = 0; i < dropdown.entries.length; ++i) {
			var entry = dropdown.entries[i]
			if (entry == chosen_entry) {
				dropdown.selectedEntryIndex = i
			}
		}
	}
}
