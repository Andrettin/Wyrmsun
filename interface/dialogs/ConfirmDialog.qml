import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: confirm_dialog
	panel: 1
	title: "Are you sure?"
	
	signal confirmed()
	
	LargeButton {
		id: yes_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.verticalCenter
		anchors.bottomMargin: 4 * wyrmgus.scale_factor
		text: qsTr("Yes")
		hotkey: "y"
		interface_style: confirm_dialog.interface_style
		
		onClicked: {
			confirm_dialog.confirmed()
			confirm_dialog.close()
		}
	}
	
	LargeButton {
		id: no_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.verticalCenter
		anchors.topMargin: 4 * wyrmgus.scale_factor
		text: qsTr("No")
		hotkey: "n"
		interface_style: confirm_dialog.interface_style
		
		onClicked: {
			confirm_dialog.close()
		}
	}
}
