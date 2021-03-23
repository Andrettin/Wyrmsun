import QtQuick 2.12
import QtQuick.Controls 2.12

WidgetBase {
	id: button
	width: image.width
	height: image.height
	widget_type: button_type
	
	property string button_type: ""
	property string lua_command: ""
	
	NormalText {
		id: label
		text: parent.hovered ? highlight(parent.text) : highlight_hotkey(parent.text, parent.hotkey)
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
		anchors.verticalCenter: parent.verticalCenter
		anchors.verticalCenterOffset: parent.pressed ? 1 * wyrmgus.defines.scale_factor : 0
	}
	
	onClicked: {
		if (lua_command.length > 0) {
			wyrmgus.call_lua_command(lua_command)
		}
	}
}
