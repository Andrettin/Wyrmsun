import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: achievements_menu
	title: "Achievements"
	button_component: Qt.createComponent("../AchievementIconButton.qml")
	entries: wyrmgus.get_achievements()
}
