extends "res://scripts/button_list_menu.gd"

var civilizations = []

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var menu_area = self.find_node("menu_area")
	
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]Encyclopedia: " + encyclopedia.get_category_name() + "[/color][/center]"
	
	for entry in encyclopedia.entries:
		var civilization = entry.get_civilization()
		if (civilization and !self.civilizations.has(civilization)):
			self.civilizations.push_back(entry.get_civilization())
			
	self.civilizations.sort_custom(self, "sort_civilizations")
			
	var buttons = []
	
	for civilization in self.civilizations:
		var civilization_button = load("res://scenes/large_button.tscn").instance()
		civilization_button.set_script(load("res://scripts/encyclopedia_category_civilization_button.gd"))
		civilization_button.civilization = civilization
		menu_area.add_child(civilization_button)
		
		var civilization_name
		if (civilization.get_ident() == "neutral"):
			civilization_name = "General"
		else:
			civilization_name = civilization.get_name()
		civilization_button.set_button_text(civilization_name + " " + encyclopedia.get_category_name())
		
		buttons.push_back(civilization_button)
		
	place_buttons(buttons)

func sort_civilizations(a, b):
	if (a.get_ident() == b.get_ident()):
		return false
	
	if (a.get_ident() == "neutral" or b.get_ident() == "neutral"):
		if (a.get_ident() == "neutral"):
			return true
		else:
			return false
	else:
		return a.get_name() < b.get_name()
