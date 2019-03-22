extends Control

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var menu_area = self.find_node("menu_area")
	
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]" + encyclopedia.entry.get_name() + "[/color][/center]"
	
	update_entry_icon_button()
	update_entry_description()

func update_entry_icon_button():
	var entry = encyclopedia.entry
	
	var entry_icon_button = self.find_node("entry_icon_button")
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

func update_entry_description():
	var entry = encyclopedia.entry
	
	var entry_description_label = self.find_node("entry_description")
	var entry_description_text = ""
	
	if (entry.get_civilization() != null and entry.get_civilization().is_hidden() == false):
		entry_description_text += "Civilization:" + " " + entry.get_civilization().get_name() + "\n\n"
	
	if (entry.get_faction() != null):
		entry_description_text += "Faction:" + " " + entry.get_faction().get_name() + "\n\n"
	
	if (entry.get_description().empty() == false):
		entry_description_text += "Description:" + " " + entry.get_description() + "\n\n"
	
	if (entry.get_quote().empty() == false):
		entry_description_text += "Quote:" + " " + entry.get_quote() + "\n\n"
	
	if (entry.get_background().empty() == false):
		entry_description_text += "Background:" + " " + entry.get_background() + "\n\n"
	
	entry_description_label.bbcode_text = entry_description_text

