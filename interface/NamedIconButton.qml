import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	width: icon_button.width + horizontal_padding * 2
	height: icon_button.height + vertical_padding * 2
	x: button_x * width + (button_width - 1) * width / 2 + horizontal_padding
	y: button_y * height + vertical_padding
	
	property string player_color: ""
	readonly property var entry: model.modelData
	readonly property var civilization: entry.civilization ? entry.civilization : (entry.civilization_group ? entry.civilization_group : null)
	readonly property var faction: entry.faction ? entry.faction : (entry.default_faction ? entry.default_faction : null)
	readonly property string name: entry.full_name ? entry.full_name : entry.name
	readonly property int horizontal_padding: 8 * wyrmgus.defines.scale_factor
	readonly property int vertical_padding: 16 * wyrmgus.defines.scale_factor
	property int button_x: 0
	property int button_y: 0
	property int button_width: 1 //the width in buttons
	property bool grayscale: false
	property bool transparent: false
	property bool disabled: false
	
	signal clicked()
	
	IconButton {
		id: icon_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		icon: entry.icon.identifier
		player_color: parent.player_color.length > 0 ? parent.player_color : (entry.player_color ? entry.player_color.identifier : (faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)))
		tooltip: name
		grayscale: parent.grayscale
		transparent: parent.transparent
		disabled: parent.disabled
		
		onClicked: {
			parent.clicked()
		}
	}
	
	TinyText {
		id: label
		anchors.top: icon_button.bottom
		anchors.topMargin: 2 * wyrmgus.defines.scale_factor
		anchors.horizontalCenter: parent.horizontalCenter
		text: name
		width: parent.width
		wrapMode: Text.WordWrap
		horizontalAlignment: Text.AlignHCenter
	}
}
