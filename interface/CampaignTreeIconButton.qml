import QtQuick 2.12
import QtQuick.Controls 2.12

GenericTreeIconButton {
	grayscale: entry.quest && entry.quest.completed
	transparent: !entry.available
	disabled: !entry.available
	
	onClicked: {
		if (entry.available) {
			menu_stack.push("menus/CampaignMenu.qml", {
				campaign: entry
			})
		}
	}
}
