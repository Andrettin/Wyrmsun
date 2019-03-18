extends Control

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var entry = encyclopedia.entry
		
	var menu_area = self.find_node("menu_area")
	
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]" + entry.get_name() + "[/color][/center]"
	
	var entry_icon_button = menu_area.find_node("entry_icon_button")
	entry_icon_button.set_tooltip(entry.get_name())
	var graphics_file = entry.get_icon().get_file()
	if (graphics_file.find("dlcs/") != -1):
		graphics_file = "res://" + graphics_file
	else:
		graphics_file = "res://graphics/" + graphics_file
	
	entry_icon_button.set_graphics(graphics_file)
	var faction = entry.get_faction()
	if (faction != null):
		entry_icon_button.set_player_color(faction.get_primary_color())
	else:
		entry_icon_button.set_player_color(encyclopedia.civilization.get_default_player_color())
