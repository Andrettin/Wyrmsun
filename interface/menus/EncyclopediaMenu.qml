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
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "buildings",
				category_name: "Buildings",
				entries: wyrmgus.get_building_encyclopedia_entries()
			})
		}
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
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "deities",
				category_name: "Deities",
				entries: wyrmgus.get_deity_encyclopedia_entries()
			})
		}
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
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "heroes",
				category_name: "Heroes",
				entries: wyrmgus.get_character_encyclopedia_entries()
			})
		}
	}
	
	LargeButton {
		id: items_button
		anchors.right: game_concepts_button.right
		anchors.top: heroes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Items"
		hotkey: "i"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "items",
				category_name: "Items",
				entries: wyrmgus.get_item_encyclopedia_entries()
			})
		}
	}
	
	LargeButton {
		id: magic_prefixes_button
		anchors.right: game_concepts_button.right
		anchors.top: items_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Magic Prefixes"
		hotkey: "r"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryMenu.qml", {
				category: "item_prefixes",
				category_name: "Magic Prefixes",
				entries: wyrmgus.get_magic_prefix_encyclopedia_entries()
			})
		}
	}
	
	LargeButton {
		id: magic_suffixes_button
		anchors.right: game_concepts_button.right
		anchors.top: magic_prefixes_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Magic Suffixes"
		hotkey: "s"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryMenu.qml", {
				category: "item_suffixes",
				category_name: "Magic Suffixes",
				entries: wyrmgus.get_magic_suffix_encyclopedia_entries()
			})
		}
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
		id: technologies_button
		anchors.left: worlds_button.left
		anchors.bottom: texts_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Technologies"
		hotkey: "t"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "technologies",
				category_name: "Technologies",
				entries: wyrmgus.get_technology_encyclopedia_entries()
			})
		}
	}
	
	LargeButton {
		id: texts_button
		anchors.left: worlds_button.left
		anchors.bottom: uniques_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Texts"
		hotkey: "x"
		lua_command: "RunEncyclopediaTextsMenu();"
	}
	
	LargeButton {
		id: uniques_button
		anchors.left: worlds_button.left
		anchors.bottom: units_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Uniques"
		hotkey: "n"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "unique_items",
				category_name: "Uniques",
				entries: wyrmgus.get_unique_item_encyclopedia_entries()
			})
		}
	}

	LargeButton {
		id: units_button
		anchors.left: worlds_button.left
		anchors.bottom: worlds_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Units"
		hotkey: "u"
		
		onClicked: {
			menu_stack.push("EncyclopediaCategoryIconMenu.qml", {
				category: "units",
				category_name: "Units",
				entries: wyrmgus.get_unit_encyclopedia_entries()
			})
		}
	}
	
	LargeButton {
		id: worlds_button
		anchors.left: parent.horizontalCenter
		anchors.leftMargin: 4
		anchors.verticalCenter: parent.verticalCenter
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
