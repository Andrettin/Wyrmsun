import QtQuick 2.12
import QtQuick.Controls 2.12
import frame_buffer_object 1.0
import map_grid_model 1.0
import unit_list_model 1.0
import "./dialogs"

Item {
	id: map_view
	anchors.fill: parent
	focus: wyrmgus.game.running && menu_stack === null
	z: 2 //place it over the frame buffer object
	
	property var menu_stack: null
	property var popups: []
	property var active_popups: []
	property int active_popup_count: 0
	readonly property var dialogue_component: Qt.createComponent("dialogs/DialogueDialog.qml")
	readonly property var quest_completed_dialog_component: Qt.createComponent("dialogs/QuestCompletedDialog.qml")
	readonly property var quest_failed_dialog_component: Qt.createComponent("dialogs/QuestFailedDialog.qml")
	
	MouseArea {
		id: mouse_area
		anchors.fill: parent
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
	}
	
	/*
	Rectangle {
		anchors.fill: parent
		color: "black"
	}
	*/
	
	/*
	TableView {
		id: map
		anchors.fill: parent
		leftMargin: 0
		rightMargin: 0
		topMargin: 0
		bottomMargin: 0
		contentWidth: tile_size * map_width
		contentHeight: tile_size * map_height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		model: MapGridModel {
			map_layer: 0
		}
		delegate: TileView {}
		
		Repeater {
			model: UnitListModel {
				map_layer: 0
			}
			
			UnitView {
			}
		}
	}
	*/
	
	TopBar {
		id: top_bar
		anchors.top: parent.top
		anchors.left: parent.left
		anchors.right: parent.right
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	LargeText {
		id: paused_label
		text: "Paused"
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: top_bar.bottom
		anchors.verticalCenterOffset: (parent.height - (wyrmgus.defines.map_area_top_margin + wyrmgus.defines.map_area_bottom_margin) * wyrmgus.scale_factor) / 2
		horizontalAlignment: Text.AlignHCenter
		wrapMode: Text.WordWrap
		font.pixelSize: 32 * wyrmgus.scale_factor
		font.bold: true
		visible: wyrmgus.game.paused && !wyrmgus.lua_dialog_open && map_view.active_popup_count == 0
	}
	
	GameMenuDialog {
		id: game_menu_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	OptionsDialog {
		id: options_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	SoundOptionsDialog {
		id: sound_options_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	PreferencesDialog {
		id: preferences_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	DiplomacyDialog {
		id: diplomacy_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	HelpDialog {
		id: help_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	HotkeysDialog {
		id: hotkeys_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	SaveGameDialog {
		id: save_game_dialog
	
		onVisibleChanged: {
			if (visible) {
				map_view.on_popup_opened(save_game_dialog)
			} else {
				map_view.on_popup_closed(save_game_dialog)
			}
		}
		
		onAccepted: {
			if (game_menu_dialog.visible) {
				game_menu_dialog.close()
			}
		}
	}
	
	LoadGameDialog {
		id: load_game_dialog
	
		onVisibleChanged: {
			if (visible) {
				map_view.on_popup_opened(load_game_dialog)
			} else {
				map_view.on_popup_closed(load_game_dialog)
			}
		}
		
		onAccepted: {
			if (game_menu_dialog.visible) {
				game_menu_dialog.close()
			}
		}
	}
	
	EndMissionDialog {
		id: end_mission_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	ConfirmDialog {
		id: restart_mission_confirm_dialog
		interface_style: wyrmgus.current_interface_style.identifier
		
		onConfirmed: {
			wyrmgus.call_lua_command("StopGame(GameRestart);")
			end_mission_dialog.close()
			game_menu_dialog.close()
		}
	}
	
	ConfirmDialog {
		id: quit_mission_confirm_dialog
		interface_style: wyrmgus.current_interface_style.identifier
		
		onConfirmed: {
			wyrmgus.call_lua_command("StopGame(GameQuitToMenu);")
			wyrmgus.map_editor.running = false
			end_mission_dialog.close()
			game_menu_dialog.close()
		}
	}
	
	ConfirmDialog {
		id: exit_to_desktop_confirm_dialog
		interface_style: wyrmgus.current_interface_style.identifier
		
		onConfirmed: {
			window.close()
			end_mission_dialog.close()
			game_menu_dialog.close()
		}
	}
	
	FactionChoiceDialog {
		id: faction_choice_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	Keys.onPressed: {
		for (var i = (map_view.popups.length - 1); i >= 0; --i) {
			var popup = map_view.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_pressed_key) {
				popup.on_pressed_key(event)
			}
			
			return
		}
		
		for (var i = 0; i < map_view.children.length; ++i) {
			var child_element = map_view.children[i]
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					return
				}
			}
		}
	}
	
	Keys.onReleased: {
		for (var i = (map_view.popups.length - 1); i >= 0; --i) {
			var popup = map_view.popups[i]
			if (!popup.visible) {
				continue
			}
			
			if (popup.on_released_key) {
				popup.on_released_key(event)
			}
			
			return
		}
		
		if (wyrmgus.game.console_active) {
			switch (event.key) {
				case Qt.Key_F1:
				case Qt.Key_F2:
				case Qt.Key_F3:
				case Qt.Key_F4:
				case Qt.Key_F5:
				case Qt.Key_F6:
				case Qt.Key_F7:
				case Qt.Key_F8:
				case Qt.Key_F9:
				case Qt.Key_F10:
					break
				default:
					return
			}
		}
		
		for (var i = 0; i < map_view.children.length; ++i) {
			var child_element = map_view.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					return
				}
			}
		}
		
		switch (event.key) {
			case Qt.Key_H:
				if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
					if (!wyrmgus.map_editor.running) {
						help_dialog.open()
					}
				}
				break
			case Qt.Key_L:
				if (event.modifiers & Qt.AltModifier) {
					if (!wyrmgus.map_editor.running) {
						load_game_dialog.open()
					}
				}
				break
			case Qt.Key_M:
				if (event.modifiers & Qt.AltModifier) {
					if (!wyrmgus.map_editor.running) {
						game_menu_dialog.open()
					}
				}
				break
			case Qt.Key_Q:
				if ((event.modifiers & Qt.ControlModifier)) {
					quit_mission_confirm_dialog.open()
				}
				break
			case Qt.Key_R:
				if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
					if (!wyrmgus.game.multiplayer && !wyrmgus.map_editor.running) {
						restart_mission_confirm_dialog.open()
					}
				}
				break
			case Qt.Key_S:
				if (event.modifiers & Qt.AltModifier) {
					if (!wyrmgus.map_editor.running) {
						save_game_dialog.open()
					}
				}
				break
			case Qt.Key_X:
				if ((event.modifiers & Qt.ControlModifier) || (event.modifiers & Qt.AltModifier)) {
					exit_to_desktop_confirm_dialog.open()
				}
				break
			case Qt.Key_F1:
				if (!wyrmgus.map_editor.running) {
					help_dialog.open()
				}
				break
			case Qt.Key_F5:
				if (!wyrmgus.map_editor.running) {
					options_dialog.open()
				}
				break
			case Qt.Key_F7:
				if (!wyrmgus.map_editor.running) {
					sound_options_dialog.open()
				}
				break
			case Qt.Key_F8:
				if (!wyrmgus.map_editor.running) {
					preferences_dialog.open()
				}
				break
			case Qt.Key_F9:
				if (!wyrmgus.map_editor.running) {
					diplomacy_dialog.open()
				}
				break
			case Qt.Key_Backspace:
				if (!wyrmgus.map_editor.running) {
					game_menu_dialog.open()
				}
				break
			default:
				break
		}
	}
	
	Connections {
		target: wyrmgus
		
		function onEncyclopediaEntryOpened(link) {
			map_view.create_menu(["menus/EncyclopediaEntryMenu.qml", {
				entry: wyrmgus.get_link_target(link)
			}])
		}
		
		function onFactionChoiceDialogOpened(potential_factions) {
			faction_choice_dialog.factions = potential_factions
			faction_choice_dialog.open()
		}
		
		function onDialogueNodeCalled(dialogue, node_index, title_str, text, icon_identifier, player_color_identifier, options, option_hotkeys, option_tooltips, unit_number) {
			if (dialogue_component.status == Component.Error) {
				console.error(dialogue_component.errorString())
				return
			}
			
			var dialogue_dialog = dialogue_component.createObject(map_view, {
				dialogue: dialogue,
				node_index: node_index,
				title: title_str,
				text: text,
				icon: icon_identifier,
				player_color: player_color_identifier,
				options: options,
				option_hotkeys: option_hotkeys,
				option_tooltips: option_tooltips,
				unit_number: unit_number,
				interface_style: wyrmgus.current_interface_style.identifier
			})
			
			dialogue_dialog.open()
		}
		
		function onQuestCompletedDialogOpened(quest, rewards_string) {
			if (quest_completed_dialog_component.status == Component.Error) {
				console.error(quest_completed_dialog_component.errorString())
				return
			}
			
			var quest_dialog = quest_completed_dialog_component.createObject(map_view, {
				quest: quest,
				rewards_string: rewards_string,
				interface_style: wyrmgus.current_interface_style.identifier
			})
			
			quest_dialog.open()
		}
		
		function onQuestFailedDialogOpened(quest, failure_reason_string) {
			if (quest_failed_dialog_component.status == Component.Error) {
				console.error(quest_failed_dialog_component.errorString())
				return
			}
			
			var quest_dialog = quest_failed_dialog_component.createObject(map_view, {
				quest: quest,
				failure_reason_string: failure_reason_string,
				interface_style: wyrmgus.current_interface_style.identifier
			})
			
			quest_dialog.open()
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(mouse_area)
		wyrmgus.install_event_filter_on(map_view)
		wyrmgus.on_map_view_created()
	}
	
	function create_menu(menu_array) {
		var menu_stack_component = Qt.createComponent("menus/MenuStack.qml")
		
		if (menu_stack_component.status == Component.Error) {
			console.error(menu_stack_component.errorString())
			return
		}
		
		map_view.menu_stack = menu_stack_component.createObject(map_view, { focus: true })
		map_view.menu_stack.push(menu_array)
		increment_active_popup_count()
	}
	
	function on_menu_stack_destroyed() {
		map_view.menu_stack = null
		decrement_active_popup_count()
	}
	
	function increment_active_popup_count() {
		var updated_active_popup_count = map_view.active_popup_count
		++updated_active_popup_count
		
		if (updated_active_popup_count == 1 && !wyrmgus.map_editor.running) {
			if (!wyrmgus.game.multiplayer) {
				wyrmgus.game.paused = true
			}
			wyrmgus.modal_dialog_open = true
		}
		
		//the map view's active popup count must be updated only afterwards, so that the "Paused" label doesn't appear for just an instant
		map_view.active_popup_count = updated_active_popup_count
	}
	
	function decrement_active_popup_count() {
		var updated_active_popup_count = map_view.active_popup_count
		--updated_active_popup_count
		
		if (updated_active_popup_count == 0 && !wyrmgus.map_editor.running) {
			if (!wyrmgus.game.multiplayer) {
				wyrmgus.game.paused = false
			}
			wyrmgus.modal_dialog_open = false
		}
		
		map_view.active_popup_count = updated_active_popup_count
	}
	
	function on_popup_opened(popup) {
		map_view.increment_active_popup_count()
		
		map_view.active_popups.push(popup)
		
		if (popup.receive_focus) {
			popup.receive_focus()
		}
	}
	
	function on_popup_closed(popup) {
		decrement_active_popup_count()
		
		const popup_index = map_view.active_popups.indexOf(popup)
		if (popup_index != -1) {
			map_view.active_popups.splice(popup_index, 1)
		}
		
		//when a popup is closed, give focus to another active popup, if any
		for (var i = (map_view.active_popups.length - 1); i >= 0; --i) {
			var popup = map_view.active_popups[i]
			if (popup.receive_focus) {
				popup.receive_focus()
			}
			break
		}
	}
}
