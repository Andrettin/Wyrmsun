import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: message_list_item
	enabled: false
	
	property var model: []
	property var layout_direction: ListView.TopToBottom
	property bool fit_to_content_width: false
	
	//draw a semi-transparent rectangle behind the messages, to make them more readable
	Rectangle {
		id: background
		anchors.top: message_list_item.layout_direction === ListView.TopToBottom ? parent.top : undefined
		anchors.bottom: message_list_item.layout_direction === ListView.BottomToTop ? parent.bottom : undefined
		anchors.left: parent.left
		anchors.right: message_list_item.fit_to_content_width ? undefined : parent.right
		color: "black"
		radius: 5
		opacity: 0.5
		width: Math.min(message_list_item.width, message_list.contentItem.childrenRect.width + 4 * wyrmgus.scale_factor * 2)
		height: message_list.contentHeight > 0 ? (message_list.contentHeight + 4 * wyrmgus.scale_factor * 2) : 0
	}
	
	ListView {
		id: message_list
		anchors.left: message_list_item.left
		anchors.leftMargin: 4 * wyrmgus.scale_factor
		anchors.right: message_list_item.right
		anchors.rightMargin: 4 * wyrmgus.scale_factor
		anchors.top: message_list_item.top
		anchors.topMargin: 4 * wyrmgus.scale_factor
		anchors.bottom: message_list_item.bottom
		anchors.bottomMargin: 4 * wyrmgus.scale_factor
		contentY: verticalLayoutDirection === ListView.BottomToTop ? -contentHeight : 0
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		spacing: 4 * wyrmgus.scale_factor
		model: message_list_item.model
		verticalLayoutDirection: message_list_item.layout_direction
		delegate: SmallText {
			text: modelData
			wrapMode: Text.WordWrap
		}
	}
}
