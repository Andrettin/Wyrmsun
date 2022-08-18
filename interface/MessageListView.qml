import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: message_area_item
	enabled: false
	
	property string text: ""
	
	//draw a semi-transparent rectangle behind the text, to make it more readable
	Rectangle {
		id: text_background
		anchors.bottom: parent.bottom
		anchors.left: parent.left
		anchors.right: parent.right
		color: "black"
		radius: 5
		opacity: 0.5
		height: message_list.contentHeight > 0 ? (message_list.contentHeight + 8 * wyrmgus.scale_factor * 2) : 0
	}
	
	ListView {
		id: message_list
		anchors.left: message_area_item.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: message_area_item.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.top: message_area_item.top
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: message_area_item.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		contentY: -contentHeight
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		spacing: 8 * wyrmgus.scale_factor
		model: wyrmgus.game_messages
		verticalLayoutDirection: ListView.BottomToTop
		delegate: SmallText {
			text: modelData
			wrapMode: Text.WordWrap
		}
	}
}
