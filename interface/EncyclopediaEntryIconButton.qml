import QtQuick 2.12
import QtQuick.Controls 2.12

EntryIconButtonBase {
	readonly property var civilization: model.modelData.civilization ? model.modelData.civilization : (model.modelData.civilization_group ? model.modelData.civilization_group : null)
	readonly property var faction: model.modelData.faction ? model.modelData.faction : (model.modelData.default_faction ? model.modelData.default_faction : null)
	readonly property var pantheon: model.modelData.pantheon
	readonly property var civilization_name: civilization && civilization !== wyrmgus.defines.neutral_civilization ? qsTr(civilization.name) : (pantheon ? qsTr(pantheon.name) : "")
	readonly property string faction_tooltip: faction ? (": " + qsTr(faction.name)) : ""
	readonly property string civilization_tooltip: civilization_name.length > 0 ? (" (" + civilization_name + faction_tooltip + ")") : ""
	readonly property string name: model.modelData.full_name ? model.modelData.full_name : qsTr(model.modelData.name)
	
	visible: model.modelData.icon != null
	icon: model.modelData.icon.identifier
	player_color: faction ? faction.color.identifier : (civilization && civilization.default_color ? civilization.default_color.identifier : wyrmgus.defines.neutral_player_color.identifier)
	tooltip: name + civilization_tooltip
	
	onClicked: {
		menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
			entry: model.modelData
		})
	}
}
