import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: connecting_dialog
	panel: 4
	
	property string server_address: ""
	
	NormalText {
		id: connecting_label
		anchors.top: parent.top
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		text: "Connecting to " + server_address + "..."
	}
	
	BusyIndicator {
		anchors.top: connecting_label.bottom
		anchors.topMargin: 16 * wyrmgus.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		Component.onCompleted: {
			contentItem.pen = "lightgray"
			contentItem.fill = "lightgray"
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
		text: qsTr("Cancel")
		hotkey: "c"
		
		onClicked: {
			join_game_dialog.close()
			connecting_dialog.close()
		}
	}
	
	Timer {
		id: connection_check_timer
		interval: 1000
		repeat: true
		running: parent.visible
		
		onTriggered: {
			wyrmgus.network_manager.process_client_request()
			
			var state = wyrmgus.network_manager.get_network_state()
			
			//FIXME: do not use numbers
			if (state == 3) { //ccs_mapinfo
				//got ICMMap => load map
				menu_stack.push("../menus/MultiplayerGameJoinMenu.qml")
				
				join_game_dialog.close()
				connecting_dialog.close()
			} else if (state == 4) { //ccs_badmap
				error_dialog.text = "Map not available."
				error_dialog.open()
				connecting_dialog.close()
			} else if (state == 10) { //ccs_unreachable
				error_dialog.text = "Cannot reach server."
				error_dialog.open()
				connecting_dialog.close()
			} else if (state == 12) { //ccs_nofreeslots
				error_dialog.text = "Server is full."
				error_dialog.open()
				connecting_dialog.close()
			} else if (state == 13) { //ccs_serverquits
				error_dialog.text = "Server gone."
				error_dialog.open()
				connecting_dialog.close()
			} else if (state == 16) { //ccs_incompatibleengine
				error_dialog.text = "Incompatible engine version."
				error_dialog.open()
				connecting_dialog.close()
			} else if (state == 17) { //ccs_incompatiblenetwork
				error_dialog.text = "Incompatible network version."
				error_dialog.open()
				connecting_dialog.close()
			}
		}
	}
}
