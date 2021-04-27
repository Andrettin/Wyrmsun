import QtQuick 2.12
import QtQuick.Controls 2.12

Flickable {
	id: icon_button_tree
	contentWidth: contentItem.childrenRect.width
	contentHeight: contentItem.childrenRect.height + 8 * wyrmgus.defines.scale_factor //the extra padding is to ensure there is enough space to display the text of the bottom-most button
	boundsBehavior: Flickable.StopAtBounds
	leftMargin: contentWidth < width ? ((width - contentWidth) / 2) : 0 //centralize the content horizontally if its width is less than that of the flickable
	clip: true
	ScrollBar.horizontal: ScrollBar {
		policy: ScrollBar.AsNeeded
	}
	ScrollBar.vertical: ScrollBar {
		policy: ScrollBar.AsNeeded
	}
	
	property var entries: []
	property var icon_button_component: null
	property string player_color: ""
	
	Repeater {
		model: icon_button_tree.entries
		delegate: icon_button_component
	}
}
