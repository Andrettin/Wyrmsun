import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: options_dialog
	panel: 1
	title: "Options"
	
	LargeButton {
		id: sound_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		text: qsTr("Sound")
		hotkey: "f7"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			sound_options_dialog.open()
		}
	}
	
	LargeButton {
		id: preferences_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: sound_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Preferences")
		hotkey: "f8"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			preferences_dialog.open()
		}
	}
	
	LargeButton {
		id: diplomacy_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: preferences_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Diplomacy")
		hotkey: "f9"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			diplomacy_dialog.open()
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: diplomacy_button.bottom
		anchors.topMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Previous Menu")
		hotkey: "esc"
		interface_style: options_dialog.interface_style
		
		onClicked: {
			options_dialog.close()
		}
	}
}
