import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
	id: window
	visible: false
	width: 1680
	height: 960
	title: qsTr("Wyrmsun")
	flags: Qt.FramelessWindowHint
	//visibility: "FullScreen"
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	Connections {
		target: wyrmgus
		onRunningChanged: {
			if (!wyrmgus.parameters.test_run && wyrmgus.running) {
				var component = Qt.createComponent("MainMenu.qml");
				component.createObject(window);
			}
		}
	}
}
