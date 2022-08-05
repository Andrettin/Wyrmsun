import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."
import "../dialogs"

ButtonTreeMenuBase {
	id: achievements_menu
	title: qsTr("Achievements")
	entries: wyrmgus.get_achievements()
	icon_button_component: Qt.createComponent("../AchievementTreeIconButton.qml")
	
	readonly property var achievement_dialog_item: achievement_dialog
	
	AchievementDialog {
		id: achievement_dialog
	}
}
