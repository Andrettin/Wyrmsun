import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

Item {
	id: menu
	focus: wyrmgus.game.running == false

	property string title: ""
	property string background: wyrmgus.defines.default_menu_background_file
	property string music_type: "menu"
	property var title_element: title_text
	property var popups: []
	
	Image {
		anchors.fill: parent
		source: "file:///" + background
		fillMode: Image.PreserveAspectCrop
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
		
		onClicked: {
			for (var i = 0; i < menu.children.length; ++i) {
				var child_element = menu.children[i]
				if (child_element.on_clicked_outside) {
					child_element.on_clicked_outside()
				}
			}
		}
	}
	
	LargeText {
		id: title_text
		text: highlight(parent.title)
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		anchors.topMargin: 36 * wyrmgus.scale_factor
	}
	
	Keys.onPressed: function(event) {
		for (var i = (menu.popups.length - 1); i >= 0; --i) {
			var popup = menu.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_pressed_key) {
				popup.on_pressed_key(event)
			}
			
			return
		}
		
		for (var i = 0; i < menu.children.length; ++i) {
			var child_element = menu.children[i]
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
	
	Keys.onReleased: function(event) {
		for (var i = (menu.popups.length - 1); i >= 0; --i) {
			var popup = menu.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_released_key) {
				popup.on_released_key(event)
			}
			
			return
		}
		
		for (var i = 0; i < menu.children.length; ++i) {
			var child_element = menu.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(mouse_area)
		wyrmgus.install_event_filter_on(menu)
	}
	
	onFocusChanged: {
		if (focus && !wyrmgus.game.running) {
			wyrmgus.play_music(music_type)
		}
	}
}
