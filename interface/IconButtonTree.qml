import QtQuick 2.12
import QtQuick.Controls 2.12

Flickable {
	id: icon_button_tree
	contentWidth: contentItem.childrenRect.width
	contentHeight: contentItem.childrenRect.height
	boundsBehavior: Flickable.StopAtBounds
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
