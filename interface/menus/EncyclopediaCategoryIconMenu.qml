import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

EncyclopediaCategoryMenuBase {
	id: encyclopedia_category_menu
	button_component: Qt.createComponent("../EncyclopediaEntryIconButton.qml")
}
