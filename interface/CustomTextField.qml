import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
	id: custom_text_field
	color: "white"
	font.family: berenika_font.name
	font.pixelSize: 12 * wyrmgus.scale_factor
	
	background: Rectangle {
		id: text_background
		color: "black"
		radius: 5
		opacity: 0.5
	}
	
	//ensure pressed and released key pressed aren't propagated if the text field has focus
	function on_pressed_key(event) {
		if (focus) {
			event.accepted = true
			console.log("accept")
		}
	}
	
	function on_released_key(event) {
		if (focus) {
			event.accepted = true
			console.log("accept")
		}
	}
}
