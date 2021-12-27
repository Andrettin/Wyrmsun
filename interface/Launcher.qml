import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Window 2.12
import "./dialogs"

Window {
	id: window
	visible: true
	title: qsTr("Wyrmsun Launcher")
	width: 696
	height: 364
	minimumWidth: width
	maximumWidth: width
	minimumHeight: height
	maximumHeight: height
	color: "black"
	
	readonly property real scale_factor: 2
	readonly property string scale_factor_suffix: (scale_factor > 1 ? ("_" + scale_factor + "x") : "")
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	FontLoader {
		id: berenika_bold_font
		source: "../fonts/berenika_bold.ttf"
	}
	
	Item {
		id: viewport
		anchors.fill: parent
		focus: true
		
		Image {
			id: background
			anchors.fill: parent
			source: "../graphics/interface/launcher_background.png"
			fillMode: Image.PreserveAspectCrop
		}
		
		LauncherButton {
			id: start_button
			anchors.bottom: upload_mod_button.top
			anchors.bottomMargin: 4 * scale_factor
			anchors.right: parent.right
			anchors.rightMargin: 8 * scale_factor
			text: "Start"
			hotkey: "s"
			
			onClicked: {
				enabled = false
				process_manager.start()
			}
		}
		
		LauncherButton {
			id: upload_mod_button
			anchors.bottom: parent.bottom
			anchors.bottomMargin: 4 * scale_factor
			anchors.right: parent.right
			anchors.rightMargin: 8 * scale_factor
			text: "Upload Mod"
			hotkey: "m"
			
			onClicked: {
				upload_mod_dialog.open()
			}
		}
		
		FileDialog {
			id: upload_mod_dialog
			title: "Upload Mod"
			selectExisting: true
			selectFolder: true
			sidebarVisible: false
			
			onAccepted: {
				var error_message = mod_manager.upload_mod(upload_mod_dialog.fileUrl)
				
				if (error_message.length > 0) {
					error_dialog.text = error_message
					error_dialog.open()
					return
				}
				
				//if the process takes a second or longer, show the progress dialog
				progress_dialog.text = "Uploading mod..."
				progress_dialog_timer.start()
			}
		}
		
		LauncherGenericDialog {
			id: progress_dialog
			title: "Progress"
			closable: false
		}
		
		LauncherGenericDialog {
			id: error_dialog
			title: "Error"
		}
		
		Timer {
			id: progress_dialog_timer
			interval: 1000
			repeat: false
			onTriggered: {
				progress_dialog.open()
			}
		}
		
		Connections {
			target: mod_manager
			
			function onModUploadCompleted() {
				progress_dialog_timer.stop()
				progress_dialog.close()
			}
			
			function onModUploadFailed(error_message) {
				progress_dialog_timer.stop()
				
				error_dialog.text = error_message
				error_dialog.open()
				
				progress_dialog.close()
			}
		}
		
		Keys.onPressed: {
			for (var i = 0; i < viewport.children.length; ++i) {
				var child_element = viewport.children[i]
				if (child_element.on_pressed_key) {
					child_element.on_pressed_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
		
		Keys.onReleased: {
			for (var i = 0; i < viewport.children.length; ++i) {
				var child_element = viewport.children[i]
				if (child_element.on_released_key) {
					child_element.on_released_key(event)
					if (event.accepted) {
						break
					}
				}
			}
		}
	}
	
	function highlight(text) {
		return "<font color=\"gold\">" + text + "</font>"
	}
}
