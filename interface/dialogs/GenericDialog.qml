import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: dialog
	panel: 1
	
	property string text: ""
	
	ScrollableTextArea {
		id: text_label
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: dialog.text
	}
	
	LargeButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			dialog.close()
		}
	}
}
