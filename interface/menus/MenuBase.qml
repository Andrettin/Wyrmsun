import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

Item {
	id: menu
	focus: wyrmgus.game.running == false

	property string title: ""
	property string background: "wyrmsun_sepia"
	property string music_type: "menu"
	
	Image {
		anchors.fill: parent
		source: "../../graphics/backgrounds/" + background + ".png"
		fillMode: Image.PreserveAspectCrop
	}
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
	}
	
	LargeText {
		id: title_text
		text: highlight(parent.title)
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.top
		anchors.topMargin: 36 * wyrmgus.defines.scale_factor
	}
	
	Keys.onPressed: {
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
	
	Keys.onReleased: {
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
