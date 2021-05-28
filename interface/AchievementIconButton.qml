import QtQuick 2.12
import QtQuick.Controls 2.12

EntryIconButtonBase {
	icon: model.modelData.icon.identifier
	player_color: model.modelData.player_color ? model.modelData.player_color.identifier : wyrmgus.defines.neutral_player_color.identifier
	tooltip: model.modelData.name
	transparent: !model.modelData.obtained
	
	onClicked: {
		achievement_dialog_item.achievement = model.modelData
		achievement_dialog_item.open()
	}
}
