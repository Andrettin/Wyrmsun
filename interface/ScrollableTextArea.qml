import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: text_area_item
	
	property string text: ""
	
	//draw a semi-transparent rectangle behind the text, to make it more readable
	Rectangle {
		id: text_background
		anchors.fill: parent
		color: "black"
		radius: 5
		opacity: 0.5
	}

	Flickable {
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: parent.top
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		contentWidth: contentItem.childrenRect.width
		contentHeight: contentItem.childrenRect.height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		ScrollBar.vertical: ScrollBar {
			policy: ScrollBar.AsNeeded
		}
		
		NormalText {
			id: text
			width: text_area.width
			text: format_text(text_area_item.text)
			wrapMode: Text.WordWrap
			textFormat: Text.StyledText
			linkColor: "#78b5d5"
			maximumLineCount: 564 //if the number of lines is allowed to become greater than this, then the text becomes a black rectangle
			
			onLinkActivated: {
				wyrmgus.play_sound("click")
				menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
					entry: wyrmgus.get_link_target(link)
				})
			}
		}
	}
}