import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: achievement_dialog
	panel: 2
	title: "Achievement Unlocked!"
	interface_style: wyrmgus.current_interface_style ? wyrmgus.current_interface_style.identifier : "default"
	
	property var achievement: null
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		icon: achievement ? (achievement.icon ? achievement.icon.identifier : "") : ""
		player_color: achievement && achievement.player_color ? achievement.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	}
	
	NormalText {
		id: description_label
		anchors.top: icon_button.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		text: achievement ? ("You have unlocked the " + achievement.name + " achievement.") : ""
		wrapMode: Text.WordWrap
	}
	
	LargeButton {
		id: close_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: "Close"
		hotkey: "c"
		
		onClicked: {
			achievement_dialog.close()
			achievement_dialog.destroy()
		}
	}
}
