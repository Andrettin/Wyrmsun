import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_entry_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: entry_name
	background: entry_background
	
	property var entry: null
	readonly property string entry_name: entry.full_name ? entry.full_name : entry.name
	readonly property var entry_civilization: entry.civilization
	readonly property var entry_faction: entry.faction ? entry.faction : (entry.default_faction ? entry.default_faction : null)
	readonly property string entry_background: entry.encyclopedia_background_file && entry.encyclopedia_background_file.length > 0 ? entry.encyclopedia_background_file : (entry_civilization && entry_civilization.encyclopedia_background_file.length > 0 ? entry_civilization.encyclopedia_background_file : wyrmgus.defines.default_menu_background_file)
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		icon: entry.icon ? entry.icon.identifier : ""
		player_color: entry_faction ? entry_faction.color.identifier : (entry_civilization ? entry_civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
		visible: entry.icon ? true : false
	}
	
	//draw a semi-transparent rectangle behind the text, to make it more readable
	Rectangle {
		id: text_background
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.top: entry.icon ? icon_button.bottom : parent.title_element.bottom
		anchors.topMargin: (entry.icon ? 16 : 32) * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 32 * wyrmgus.defines.scale_factor
		color: "black"
		radius: 5
		opacity: 0.5
	}
	
	Flickable {
		id: text_area
		anchors.left: text_background.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: text_background.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: text_background.top
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: text_background.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		contentWidth: contentItem.childrenRect.width
		contentHeight: contentItem.childrenRect.height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		ScrollBar.vertical: ScrollBar {
			policy: ScrollBar.AsNeeded
		}
		
		NormalText {
			id: entry_text
			width: text_area.width
			text: format_text(entry.encyclopedia_text)
			wrapMode: Text.WordWrap
			textFormat: Text.StyledText
			linkColor: "#78b5d5"
			maximumLineCount: 564 //if the number of lines is allowed to become greater than this, then the text becomes a black rectangle
			
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
