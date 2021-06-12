import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

DialogBase {
	id: change_custom_hero_description_dialog
	panel: 5
	title: "Change Description"
	
	property var custom_hero: null
	
	onOpened: {
		description_text_field.text = custom_hero.description
	}
	
	CustomTextArea {
		id: description_text_field
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: title_item.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: ok_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	SmallButton {
		id: ok_button
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "OK"
		hotkey: "o"
		
		onClicked: {
			custom_hero.description = description_text_field.text
			custom_hero.save()
			change_custom_hero_description_dialog.close()
		}
	}
	
	SmallButton {
		id: cancel_button
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Cancel"
		hotkey: "c"
		
		onClicked: {
			change_custom_hero_description_dialog.close()
		}
	}
}
