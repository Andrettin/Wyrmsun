extends Control

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
			
	var item_x = 0
	if (self.civilizations.size() > 20):
		item_x = -2
	elif (self.civilizations.size() > 10):
		item_x = -1
	var item_y = -2
	
	for civilization in self.civilizations:
		var civilization_button = load("res://scenes/large_button.tscn").instance()
		civilization_button.set_script(load("res://scripts/encyclopedia_category_civilization_button.gd"))
		civilization_button.civilization = civilization
		menu_area.add_child(civilization_button)
		
		civilization_button.rect_position.x = 208 + (113 * item_x)
		civilization_button.rect_position.y = 104 + (36 * (item_y + 2))
		var civilization_name
		if (civilization.get_ident() == "neutral"):
			civilization_name = "General"
		else:
			civilization_name = civilization.get_name()
		civilization_button.set_button_text(civilization_name + " Buildings")
		
		if (item_y > 6):
			item_x += 2
			item_y = -2
		else:
			item_y += 1
