import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBase {
	id: gameplay_options_menu
	title: "Gameplay Options"
	
	SmallButton {
		id: ok_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "OK"
		hotkey: "o"
		lua_command: "SavePreferences(); gameplay_options_menu:stop();"
		
		onClicked: {
			menu_stack.pop()
		}
	}
}
