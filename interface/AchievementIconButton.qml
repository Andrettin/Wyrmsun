import QtQuick 2.12
import QtQuick.Controls 2.12

EntryIconButtonBase {
	icon: model.modelData.icon.identifier
	player_color: model.modelData.player_color ? model.modelData.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	tooltip: model.modelData.name
	lua_command: "ShowAchievementPopup(\"" + model.modelData.identifier + "\");"
	transparent: !model.modelData.obtained
}
