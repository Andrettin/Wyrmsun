import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: hotkeys_dialog
	panel: 5
	title: qsTr("Hotkeys")
	
	Rectangle {
		id: text_background
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		color: "black"
		radius: 5
		opacity: 0.5
	}
	
	ListView {
		id: hotkey_list
		anchors.left: text_background.left
		anchors.leftMargin: 8 * wyrmgus.scale_factor
		anchors.right: text_background.right
		anchors.rightMargin: 8 * wyrmgus.scale_factor
		anchors.top: text_background.top
		anchors.topMargin: 8 * wyrmgus.scale_factor
		anchors.bottom: text_background.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: [
			["Alt-C", "- center on selected unit"],
			["Alt-H", "- help menu"],
			["Alt-I", "- find idle worker"],
			["Ctrl-L", "- return to previous map layer"],
			["Alt-M", "- game menu"],
			["Ctrl-M", "- mute music"],
			["Ctrl-P", "- pause game"],
			["Alt-Q", "- select entire army"],
			["Ctrl-Q", "- quit to main menu"],
			["Alt-R", "- restart scenario"],
			["Ctrl-S", "- mute sound"],
			["Ctrl-T", "- track unit"],
			["Alt-W", "- select all visible of the selected unit's type"],
			["Alt-WW", "- select all of the selected unit's type"],
			["Alt-X", "- quit game"],
			["+", "- increase game speed"],
			["-", "- decrease game speed"],
			["PAUSE", "- pause game"],
			["F11", "- make screen shot"],
			["ENTER", "- write a message"],
			["SPACE", "- goto last event"],
			["TAB", "- toggle minimap mode"],
			["Shift-TAB", "- toggle minimap zoom"],
			["^", "- select nothing"],
			["#", "- select group"],
			["##", "- center on group"],
			[".", "- find idle worker"],
			["Ctrl-#", "- define group"],
			["Shift-#", "- add to group"],
			["Alt-#", "- add to alternate group"],
			[".", "- select next idle worker"],
			["F2-F4", "- recall map position"],
			["Shift F2-F4", "- save map postition"],
			["F5", "- game options"],
			["F7", "- sound options"],
			["F8", "- speed options"],
			["F9", "- preferences"],
			["F10", "- game menu"],
			["BACKSPACE", "- game menu"],
			["Alt-S", "- save game"],
			["Alt-L", "- load game"]
		]
		delegate: Item {
			width: parent ? parent.width : 1
			height: Math.max(hotkey_label.height, hotkey_description_label.height)
			clip: true
			
			NormalText {
				id: hotkey_label
				text: modelData[0]
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
			}
			
			SmallText {
				id: hotkey_description_label
				text: qsTr(modelData[1])
				anchors.left: parent.left
				anchors.leftMargin: 84 * wyrmgus.scale_factor
				anchors.verticalCenter: parent.verticalCenter
			}
		}
	}
	
	LargeButton {
		id: previous_menu_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Previous Menu")
		hotkey: "esc"
		interface_style: hotkeys_dialog.interface_style
		
		onClicked: {
			hotkeys_dialog.close()
		}
	}
}
