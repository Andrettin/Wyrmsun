import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

ButtonTreeMenuBase {
	id: campaign_tree_menu
	title: qsTr("Scenarios")
	entries: wyrmgus.get_visible_campaigns()
	icon_button_component: Qt.createComponent("../CampaignTreeIconButton.qml")
}
