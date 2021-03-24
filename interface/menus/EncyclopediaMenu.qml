import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_menu
	title: "Encyclopedia"
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	
	LargeButton {
		id: buildings_button
		anchors.right: game_concepts_button.right
		anchors.bottom: civilizations_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Buildings"
		hotkey: "b"
		lua_command: "RunEncyclopediaUnitsCivilizationMenu(\"buildings\");"
	}
	
	LargeButton {
		id: civilizations_button
		anchors.right: game_concepts_button.right
		anchors.bottom: deities_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Civilizations"
		hotkey: "c"
		lua_command: "RunEncyclopediaCivilizationsMenu();"
	}
	
	LargeButton {
		id: deities_button
		anchors.right: game_concepts_button.right
		anchors.bottom: factions_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Deities"
		hotkey: "d"
		lua_command: "RunEncyclopediaUnitsMenu(\"deities\");"
	}
	
	LargeButton {
		id: factions_button
		anchors.right: game_concepts_button.right
		anchors.bottom: game_concepts_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Factions"
		hotkey: "f"
		lua_command: "RunEncyclopediaFactionsCivilizationMenu();"
	}
	
	LargeButton {
		id: game_concepts_button
		anchors.right: parent.horizontalCenter
		anchors.rightMargin: 4
		anchors.verticalCenter: parent.verticalCenter
		text: "Game Concepts"
		hotkey: "g"
		lua_command: "RunEncyclopediaGameConceptsMenu();"
	}
	
	LargeButton {
		id: heroes_button
		anchors.right: game_concepts_button.right
		anchors.top: game_concepts_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Heroes"
		hotkey: "h"
		lua_command: "RunEncyclopediaUnitsCivilizationMenu(\"heroes\");"
	}
	
	LargeButton {
		id: items_button
		anchors.right: game_concepts_button.right
		anchors.top: heroes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Items"
		hotkey: "i"
		lua_command: "RunEncyclopediaUnitsMenu(\"items\");"
	}
	
	LargeButton {
		id: magic_prefixes_button
		anchors.right: game_concepts_button.right
		anchors.top: items_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Magic Prefixes"
		hotkey: "r"
		lua_command: "RunEncyclopediaUnitsMenu(\"item_prefixes\");"
	}
	
	LargeButton {
		id: magic_suffixes_button
		anchors.right: game_concepts_button.right
		anchors.top: magic_prefixes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Magic Suffixes"
		hotkey: "s"
		lua_command: "RunEncyclopediaUnitsMenu(\"item_suffixes\");"
	}
	
	LargeButton {
		id: planes_button
		anchors.right: game_concepts_button.right
		anchors.top: magic_suffixes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Planes"
		hotkey: "l"
		lua_command: "RunEncyclopediaPlanesMenu();"
	}
	
	LargeButton {
		id: runic_suffixes_button
		anchors.left: units_button.left
		anchors.bottom: technologies_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Runic Suffixes"
		hotkey: "e"
		lua_command: "RunEncyclopediaUnitsMenu(\"runic_suffixes\");"
	}
	
	LargeButton {
		id: technologies_button
		anchors.left: units_button.left
		anchors.bottom: texts_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Technologies"
		hotkey: "t"
		lua_command: "RunEncyclopediaUnitsCivilizationMenu(\"technologies\");"
	}
	
	LargeButton {
		id: texts_button
		anchors.left: units_button.left
		anchors.bottom: uniques_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Texts"
		hotkey: "x"
		lua_command: "RunEncyclopediaTextsMenu();"
	}
	
	LargeButton {
		id: uniques_button
		anchors.left: units_button.left
		anchors.bottom: units_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Uniques"
		hotkey: "n"
		lua_command: "RunEncyclopediaUnitsMenu(\"unique_items\");"
	}

	LargeButton {
		id: units_button
		anchors.left: parent.horizontalCenter
		anchors.leftMargin: 4
		anchors.verticalCenter: parent.verticalCenter
		text: "Units"
		hotkey: "u"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", { category_name: "Units", entries: wyrmgus.get_unit_encyclopedia_entries() })
		}
	}
	
	LargeButton {
		id: worlds_button
		anchors.left: units_button.left
		anchors.top: units_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Worlds"
		hotkey: "w"
		lua_command: "RunEncyclopediaWorldsMenu();"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: planes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
	}
}
