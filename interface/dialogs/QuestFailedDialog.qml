import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: quest_dialog
	panel: 5
	title: "Quest Failed"
	
	property var quest: null
	property string failure_reason_string: ""
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		icon: quest && quest.icon ? quest.icon.identifier : ""
		player_color: quest && quest.player_color ? quest.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	}
	
	ScrollableTextArea {
		id: text_label
		anchors.top: icon_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: quest ? ("You have failed the " + quest.name + " quest. " + failure_reason_string) : ""
	}
	
	LargeButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("OK")
		hotkey: "o"
		interface_style: quest_dialog.interface_style
		
		onClicked: {
			quest_dialog.close()
			quest_dialog.destroy()
		}
	}
}
