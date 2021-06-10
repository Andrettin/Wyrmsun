import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonMenuBase {
	id: custom_heroes_menu
	title: "Custom Heroes"
	button_component: Qt.createComponent("../CustomHeroIconButton.qml")
	entries: wyrmgus.get_custom_heroes()
	button_area_bottom_anchor: create_custom_hero_button.top
	
	LargeButton {
		id: create_custom_hero_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button_item.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Create Custom Hero"
		hotkey: "c"
		lua_command: "CustomHeroCreationMenu();"
	}
}
