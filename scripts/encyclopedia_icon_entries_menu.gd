extends "res://scripts/icon_buttons_menu.gd"

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var menu_area = self.find_node("menu_area")
	
	var menu_title_label = menu_area.find_node("menu_title")
	var menu_title_text = "[center][color=#f4e020]" + tr("Encyclopedia") + ": " + tr(encyclopedia.get_category_name())
	if (encyclopedia.civilization != null and encyclopedia.civilization.is_hidden() == false):
		menu_title_text += " (" + tr(encyclopedia.civilization.get_name()) + ")"
	menu_title_text += "[/color][/center]"
	menu_title_label.bbcode_text = menu_title_text
	
	var previous_menu_button = menu_area.find_node("previous_menu_button")
	if (encyclopedia.is_category_separated_by_civilization() == false):
		previous_menu_button.target_scene = "encyclopedia_menu" #return to the main encyclopedia menu instead, if the current category doesn't divide entries by civilization
	
	var icon_buttons = []
	for entry in encyclopedia.entries:
		if (encyclopedia.civilization != null and entry.get_civilization() != encyclopedia.civilization):
			continue
		
		var entry_button = load("res://scenes/icon_button.tscn").instance()
		entry_button.set_script(load("res://scripts/encyclopedia_entry_icon_button.gd"))
		menu_area.add_child(entry_button)
		entry_button.set_entry(entry)
		
		icon_buttons.push_back(entry_button)
		
	place_icon_buttons(icon_buttons)
