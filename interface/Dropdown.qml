import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

ComboBox {
	id: dropdown
	hoverEnabled: true
	displayText: ""
	height: background_dropdown_bar.height
	focusPolicy: Qt.NoFocus
	
	property string interface_style: "default"
	readonly property var selectedEntry: currentIndex !== -1 ? model[currentIndex] : null
	
	background: DropdownBar {
		id: background_dropdown_bar
		text: selectedEntry !== null ? get_entry_name(selectedEntry) : ""
		interface_style: dropdown.interface_style
		highlighted: dropdown.hovered
		width: dropdown.width
		implicitHeight: image.height
	}
	
	delegate: ItemDelegate {
		id: dropdown_delegate
		width: dropdown.width
		height: dropdown_bar.image.height
		padding: 0
		verticalPadding: 0
		highlighted: dropdown.highlightedIndex === index
		hoverEnabled: true
		
		contentItem: DropdownBar {
			id: dropdown_bar
			text: get_entry_name(modelData)
			interface_style: dropdown.interface_style
			highlighted: dropdown_delegate.highlighted && dropdown_delegate.hovered
			implicitWidth: dropdown.width
			implicitHeight: image.height
		}
	}
	
    popup: Popup {
        y: dropdown.height
        width: dropdown.width
        implicitHeight: contentItem.implicitHeight
        padding: 0

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: dropdown.popup.visible ? dropdown.delegateModel : null
            currentIndex: dropdown.highlightedIndex
			boundsBehavior: Flickable.StopAtBounds

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
	
	indicator: WidgetImage {
		id: down_arrow_button
		anchors.top: dropdown.top
		anchors.right: dropdown.right
		widget_type: "down_arrow_button"
		interface_style: dropdown.interface_style
		pressed: dropdown.down
	}
	
	function get_entry_index(chosen_entry) {
		for (var i = 0; i < dropdown.model.length; ++i) {
			var entry = dropdown.model[i]
			if (entry == chosen_entry) {
				return i
			}
		}
		
		return -1
	}
	
	function set_selected_entry(chosen_entry) {
		if (chosen_entry == null) {
			return
		}
		
		dropdown.currentIndex = get_entry_index(chosen_entry)
	}
	
	//override this if the entry list is not a string list
	function get_entry_name(entry) {
		return entry
	}
}
