extends Control

var current_page

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var menu_area = self.find_node("menu_area")
	var entry = encyclopedia.entry
	
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]" + encyclopedia.entry.get_name() + "[/color][/center]"
	
	if (entry.is_class("CLiteraryText")):
		self.current_page = entry.get_first_page()
	
	update_entry_icon_button()
	update_entry_description()
	update_previous_and_next_buttons()

func update_entry_icon_button():
	var entry = encyclopedia.entry
	
	var entry_icon_button = self.find_node("entry_icon_button")
	
	if (entry.is_class("CLiteraryText")):
		#expand the text to encompass the place where the icon button normally is for literary texts, so that there is enough space for a given page
		var entry_description_label = self.find_node("entry_description")
		entry_description_label.margin_top = entry_icon_button.rect_position.y
		entry_icon_button.hide()
		return
	
	entry_icon_button.set_tooltip(entry.get_name())
	var graphics_file = entry.get_icon().get_file()
	if (graphics_file.find("dlcs/") != -1):
		graphics_file = "res://" + graphics_file
	else:
		graphics_file = "res://graphics/" + graphics_file
	
	entry_icon_button.set_graphics(graphics_file)
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		entry_icon_button.set_player_color(faction.get_primary_color())
	elif (encyclopedia.civilization != null):
		entry_icon_button.set_player_color(encyclopedia.civilization.get_default_player_color())

func update_entry_description():
	var entry = encyclopedia.entry
	
	var entry_description_label = self.find_node("entry_description")
	var entry_description_text = ""
	
	if (entry.has_method("get_civilization") and entry.get_civilization() != null and entry.get_civilization().is_hidden() == false):
		entry_description_text += "Civilization:" + " " + entry.get_civilization().get_name() + "\n\n"
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		entry_description_text += "Faction:" + " " + entry.get_faction().get_name() + "\n\n"
	
	if (entry.has_method("get_description") and entry.get_description().empty() == false):
		entry_description_text += "Description:" + " " + entry.get_description() + "\n\n"
	
	if (entry.has_method("get_quote") and entry.get_quote().empty() == false):
		entry_description_text += "Quote:" + " " + entry.get_quote() + "\n\n"
	
	if (entry.has_method("get_background") and entry.get_background().empty() == false):
		entry_description_text += "Background:" + " " + entry.get_background() + "\n\n"
		
	if (entry.is_class("CLiteraryText")):
		if (entry.get_author().empty() == false):
			if (entry.get_main_text() == null or entry.get_author() != entry.get_main_text().get_author()):
				entry_description_text += "Author:" + " " + entry.get_author() + "\n\n"
			
		if (entry.get_translator().empty() == false):
			if (entry.get_main_text() == null or entry.get_translator() != entry.get_main_text().get_translator()):
				entry_description_text += "Translator:" + " " + entry.get_translator() + "\n\n"
	
		if (entry.get_publisher().empty() == false):
			if (entry.get_main_text() == null or entry.get_publisher() != entry.get_main_text().get_publisher()):
				entry_description_text += "Publisher:" + " " + entry.get_publisher() + "\n\n"
	
		if (entry.get_publication_year() != 0):
			if (entry.get_main_text() == null or entry.get_publication_year() != entry.get_main_text().get_publication_year()):
				entry_description_text += "Year of Publication:" + " " + str(entry.get_publication_year()) + "\n\n"
	
		if (entry.get_copyright_notice().empty() == false):
			if (entry.get_main_text() == null or entry.get_copyright_notice() != entry.get_main_text().get_copyright_notice()):
				entry_description_text += "Copyright Notice:" + " " + entry.get_copyright_notice() + "\n\n"
			
		if (self.current_page != null):
			if (entry_description_text.empty() == false):
				#add a bit of separation between the description and the text of the page itself
				entry_description_text += "\n\n"
			entry_description_text += self.current_page.get_text()
	
	entry_description_label.bbcode_text = entry_description_text

func update_previous_and_next_buttons():
	var entry = encyclopedia.entry
	var previous_button = self.find_node("previous_button")
	var next_button = self.find_node("next_button")
	
	if (entry.is_class("CLiteraryText")):
		if (self.current_page == null or self.current_page.get_previous_page() == null):
			previous_button.hide()
		else:
			previous_button.show()
			previous_button.set_tooltip("Previous Page")
			
		if (self.current_page == null or self.current_page.get_next_page() == null):
			next_button.hide()
		else:
			next_button.show()
			next_button.set_tooltip("Next Page")
	else:
		previous_button.hide()
		next_button.hide()
		
func previous_button_pressed():
	var entry = encyclopedia.entry
	if (entry.is_class("CLiteraryText")):
		if (self.current_page.get_previous_page() != null):
			change_page(self.current_page.get_previous_page())

func next_button_pressed():
	var entry = encyclopedia.entry
	if (entry.is_class("CLiteraryText")):
		if (self.current_page.get_next_page() != null):
			change_page(self.current_page.get_next_page())

func change_page(page):
	self.current_page = page
	
	if (page.get_number() == 1):
		#this is the first page, so show the information on the literary text as well
		update_entry_description()
	else:
		var entry_description_label = self.find_node("entry_description")
		entry_description_label.bbcode_text = page.get_text()
	
	update_previous_and_next_buttons()
