import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: menu
	focus: true

	property string title: ""
	property string background: "wyrmsun_sepia"
	
	Image {
		anchors.fill: parent
		source: "../graphics/backgrounds/" + background + ".png"
		fillMode: Image.PreserveAspectCrop
	}
	
	NormalText {
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
}
