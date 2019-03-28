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
		if (entry.get_main_text() != null):
			var previous_menu_button = self.find_node("previous_menu_button")
			previous_menu_button.target_scene = ""
			previous_menu_button.connect("pressed", encyclopedia, "open_entry", [entry.get_main_text()])
		
		self.current_page = entry.get_first_page()
	
	update_entry_icon_button()
	update_entry_description()
	update_previous_and_next_buttons()
	update_page_number_visibility()
	
	if (entry.is_class("CLiteraryText") and encyclopedia.last_page and entry.get_last_page() != null):
		change_page(entry.get_last_page())
		encyclopedia.last_page = false

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
	
		if (entry.get_license().empty() == false):
			if (entry.get_main_text() == null or entry.get_license() != entry.get_main_text().get_license()):
				entry_description_text += "License:" + " " + entry.get_license() + "\n\n"
			
		if (self.current_page != null):
			if (entry_description_text.empty() == false):
				#add a bit of separation between the description and the text of the page itself
				entry_description_text += "\n\n"
			entry_description_text += self.current_page.get_text()
			
		#draw a table of contents for subsections of the literary text for the last page of the literary text
		var sections = entry.get_sections()
		if (sections.empty() == false and (self.current_page == null or self.current_page.get_next_page() == null)):
			entry_description_text += "\n\n" + "Table of Contents" + "\n"
			
			for section in sections:
				entry_description_text += "\n[url=literary_text:" + section.get_ident() + "]"
				entry_description_text += section.get_name()
				entry_description_text += "[/url]"
		
	entry_description_label.bbcode_text = entry_description_text
	entry_description_label.connect("meta_clicked", encyclopedia, "open_entry_link")

func update_previous_and_next_buttons():
	var entry = encyclopedia.entry
	var previous_button = self.find_node("previous_button")
	var next_button = self.find_node("next_button")
	
	if (entry.is_class("CLiteraryText")):
		if ((self.current_page == null or self.current_page.get_previous_page() == null) and entry.get_previous_section() == null and entry.get_main_text() == null):
			previous_button.visible = false
		else:
			previous_button.visible = true
			previous_button.set_tooltip("Previous Page")
			
		if ((self.current_page == null or self.current_page.get_next_page() == null) and entry.get_next_section() == null and entry.get_sections().empty() == true and (entry.get_main_text() == null or entry.get_main_text().get_next_section() == null)):
			next_button.visible = false
		else:
			next_button.visible = true
			next_button.set_tooltip("Next Page")
	else:
		previous_button.visible = false
		next_button.visible = false
		
func previous_button_pressed():
	var entry = encyclopedia.entry
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_previous_page() != null):
			change_page(self.current_page.get_previous_page())
		elif (entry.get_previous_section() != null):
			encyclopedia.last_page = true
			var new_entry = entry.get_previous_section()
			#set to the last subsection within the previous section
			while (new_entry.get_sections().empty() == false):
				new_entry = new_entry.get_sections().back()
			encyclopedia.open_entry(new_entry)
		elif (entry.get_main_text() != null):
			encyclopedia.last_page = true
			encyclopedia.open_entry(entry.get_main_text())

func next_button_pressed():
	var entry = encyclopedia.entry
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_next_page() != null):
			change_page(self.current_page.get_next_page())
		elif (entry.get_sections().empty() == false):
			encyclopedia.open_entry(entry.get_sections().front())
		elif (entry.get_next_section() != null):
			encyclopedia.open_entry(entry.get_next_section())
		elif (entry.get_main_text() != null and entry.get_main_text().get_next_section() != null):
			encyclopedia.open_entry(entry.get_main_text().get_next_section())

func change_page(page):
	self.current_page = page
	
	var entry_description_label = self.find_node("entry_description")
	
	if (page.get_number() == 1):
		#this is the first page, so show the information on the literary text as well
		update_entry_description()
	else:
		entry_description_label.bbcode_text = page.get_text()
		entry_description_label.update_for_scroll_bar()
	
	update_page_number()
	entry_description_label.get_v_scroll().value = 0
	update_previous_and_next_buttons()

func update_page_number_visibility():
	var page_number_label = self.find_node("page_number")
	
	var entry = encyclopedia.entry
	if (entry.is_class("CLiteraryText")):
		page_number_label.visible = true
		update_page_number()
	else:
		page_number_label.visible = false
	
func update_page_number():
	var entry = encyclopedia.entry
	var page_number_label = self.find_node("page_number")
	if (entry.is_page_numbering_enabled() and self.current_page != null):
		var page_number = (entry.get_initial_page_number() - 1) + self.current_page.get_number()
		var page_number_text = ""
		if (entry.has_lowercase_roman_numeral_page_numbering()):
			page_number_text = wyrmgus.number_to_roman_numeral(page_number).to_lower()
		else:
			page_number_text = str(page_number)
		page_number_label.bbcode_text = "[center]" + page_number_text + "[/center]"
	else:
		page_number_label.bbcode_text = ""