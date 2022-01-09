import QtQuick 2.12
import QtQuick.Controls 2.12

GenericTreeIconButton {
	transparent: !entry.obtained
	
	onClicked: {
		achievement_dialog_item.achievement = entry
		achievement_dialog_item.open()
	}
}
