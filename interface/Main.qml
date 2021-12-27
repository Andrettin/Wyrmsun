import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
	id: window
	visible: false
	title: qsTr("Wyrmsun")
	width: wyrmgus.preferences.fullscreen ? Screen.width : wyrmgus.preferences.window_width
	height: wyrmgus.preferences.fullscreen ? Screen.height + 1 : wyrmgus.preferences.window_height //it needs to be +1 otherwise it becomes (non-borderless) fullscreen automatically
	flags: wyrmgus.preferences.fullscreen ? (Qt.FramelessWindowHint | Qt.Window) : (Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint | Qt.WindowSystemMenuHint | Qt.WindowMinimizeButtonHint | Qt.WindowCloseButtonHint)
	minimumWidth: (wyrmgus.preferences.fullscreen || wyrmgus.preferences.window_maximized) ? 1 : wyrmgus.preferences.window_width
	minimumHeight: (wyrmgus.preferences.fullscreen || wyrmgus.preferences.window_maximized) ? 1 : wyrmgus.preferences.window_height
	maximumWidth: (wyrmgus.preferences.fullscreen || wyrmgus.preferences.window_maximized) ? 9999 : wyrmgus.preferences.window_width
	maximumHeight: (wyrmgus.preferences.fullscreen || wyrmgus.preferences.window_maximized) ? 9999 : wyrmgus.preferences.window_height
	color: "black"
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	FontLoader {
		id: berenika_bold_font
		source: "../fonts/berenika_bold.ttf"
	}
	
	Connections {
		target: wyrmgus
		function onRunningChanged() {
			if (!wyrmgus.parameters.test_run && wyrmgus.running) {
				var component = Qt.createComponent("Viewport.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				var viewport = component.createObject(window)
				
				wyrmgus.call_lua_command("SetVideoSize(" + viewport.width + ", " + viewport.height + ");")
				
				if (!wyrmgus.preferences.fullscreen && wyrmgus.preferences.window_maximized) {
					window.showMaximized()
				}
				
				window.visible = true
				
				//wyrmgus.crop_image_frames("C:/Wyrmsun/graphics/units/undead/skeleton_warrior.png", Qt.size(116, 116), Qt.size(72, 72))
			}
		}
	}
	
	onClosing: {
		window.visible = false
		wyrmgus.exit()
	}
	
	//highlight text
	function highlight(text) {
		return "<font color=\"gold\">" + text + "</font>"
	}
	
	function format_text(text) {
		var str = text
		str = str.replace(/\n/g, "<br>")
		str = str.replace(/\t/g, "<font color=\"transparent\">aaaa</font>") //whitespaces are ignored after a <br>
		str = str.replace(/~</g, "<font color=\"gold\">")
		str = str.replace(/~>/g, "</font>")
		return str
	}
	
	function font_size_text(text, font_size) {
		return "<span style='font-size: " + font_size + "px;'>" + text + "</span>"
	}
	
	function small_text(text) {
		return font_size_text(text, 10 * wyrmgus.scale_factor)
	}
	
	function escape_string(text) {
		var str = text
		str = str.replace(/\\/g, "\\\\")
		str = str.replace(/\n/g, "\\n")
		str = str.replace(/\t/g, "\\t")
		str = str.replace(/\"/g, "\\\"")
		return str
	}
	
	//generate a random number
	function random(n) {
		return Math.floor(Math.random() * n)
	}
	
	//generate a random boolean value
	function random_bool() {
		return random(2) == 1
	}
	
	//get a random element from an array
	function random_element(arr) {
		return arr[random(arr.length)]
	}
	
	//function to format numbers as text
	function number_string(n) {
		return n.toLocaleString(Qt.locale("en_US"), 'f', 0)
	}
	
	function year_string(year) {
		var year_suffix
		
		if (year >= 0) {
			year_suffix = "AD"
		} else {
			year_suffix = "BC"
			year = Math.abs(year - 1) //-1 was needed, as otherwise negative dates were off by one
		}
		
		var year_str
		if (year >= 10000) {
			year_str = number_string(year)
		} else {
			year_str = year
		}
		
		return year_str + " " + year_suffix
	}
	
	function get_minimum_window_width(scale_factor) {
		if (scale_factor >= 2) {
			return 1600
		} else if (scale_factor >= 1.5) {
			return 1024
		} else {
			return 800
		}
	}
	
	function get_minimum_window_height(scale_factor) {
		if (scale_factor >= 2) {
			return 864
		} else if (scale_factor >= 1.5) {
			return 768
		} else {
			return 600
		}
	}
}
