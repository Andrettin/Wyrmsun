import QtQuick 2.12
import QtQuick.Controls 2.12
import frame_buffer_object 1.0
import map_grid_model 1.0
import unit_list_model 1.0
import "./dialogs"

Item {
	id: map_view
	anchors.fill: parent
	focus: wyrmgus.game.running && menu_stack == null
	z: 2 //place it over the frame buffer object
	
	property var menu_stack: null
	property var popups: []
	
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
	
	/*
	TopBar {
		anchors.top: parent.top
		anchors.left: parent.left
		anchors.right: parent.right
	}
	*/
	
	ThinnestButton {
		id: menu_button
		anchors.left: parent.left
		anchors.leftMargin: 26 * wyrmgus.defines.scale_factor
		anchors.top: parent.top
		anchors.topMargin: 1 * wyrmgus.defines.scale_factor
		text: "Menu (F10)"
		hotkey: "f10"
		interface_style: wyrmgus.current_interface_style.identifier
		
		onClicked: {
			if (wyrmgus.map_editor.running) {
				wyrmgus.call_lua_command("RunInEditorMenu();")
			} else {
				wyrmgus.call_lua_command("if (not IsNetworkGame()) then SetGamePaused(true); end")
				game_menu_dialog.open()
				wyrmgus.call_lua_command("RunGameMenu();")
			}
		}
	}
	
	GameMenuDialog {
		id: game_menu_dialog
		interface_style: wyrmgus.current_interface_style.identifier
	}
	
	OptionsDialog {
		id: options_dialog
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
		
		for (var i = 0; i < map_view.children.length; ++i) {
			var child_element = map_view.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					return
				}
			}
		}
	}
	
	Connections {
		target: wyrmgus
		onEncyclopediaEntryOpened: {
			var menu_stack_component = Qt.createComponent("menus/MenuStack.qml")
			
			if (menu_stack_component.status == Component.Error) {
				console.error(menu_stack_component.errorString())
				return
			}
			
			map_view.menu_stack = menu_stack_component.createObject(map_view, { focus: true })
			map_view.menu_stack.push("menus/EncyclopediaEntryMenu.qml", {
				entry: wyrmgus.get_link_target(link)
			})
		}
	}
	
	Component.onCompleted: {
		wyrmgus.install_event_filter_on(mouse_area)
		wyrmgus.install_event_filter_on(map_view)
		wyrmgus.on_map_view_created()
	}
}
