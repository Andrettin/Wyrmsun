import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."
import "../dialogs"

ButtonMenuBase {
	id: achievements_menu
	title: "Achievements"
	button_component: Qt.createComponent("../AchievementIconButton.qml")
	entries: wyrmgus.get_achievements()
	
	readonly property var achievement_dialog_item: achievement_dialog
	
	AchievementDialog {
		id: achievement_dialog
	}
}
