import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: custom_heroes_menu
	title: "Custom Heroes"
	button_component: Qt.createComponent("../CustomHeroIconButton.qml")
	entries: wyrmgus.get_custom_heroes()
}
