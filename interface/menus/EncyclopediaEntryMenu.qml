import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_entry_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: entry_name
	
	property var entry: null
	readonly property string entry_name: entry.full_name ? entry.full_name : entry.name
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		icon: entry.icon ? entry.icon.identifier : ""
		visible: entry.icon
	}
	
	Flickable {
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.top: icon_button.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 32 * wyrmgus.defines.scale_factor
		contentWidth: contentItem.childrenRect.width
		contentHeight: contentItem.childrenRect.height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		ScrollBar.vertical: CustomScrollBar {}
		
		NormalText {
			id: entry_text
			width: text_area.width
			text: format_text(entry.encyclopedia_text)
			wrapMode: Text.WordWrap
			textFormat: Text.StyledText
			linkColor: "#78b5d5"
			
			onLinkActivated: {
				menu_stack.push("EncyclopediaEntryMenu.qml", {
					entry: wyrmgus.get_link_target(link)
				})
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
