extends Popup

#the current page, if the entry is a literary text
var current_page

#the entry for the menu
var entry

#the scene which originated the creation of this one
var origin_scene

func _ready():
	var command = "if (RunningScenario == false) then"
	command += "\nif not (IsMusicPlaying()) then"
	command += "\nPlayMusicName(\"MenuTheme\")"
	command += "\nend"
	command += "\nend"
	wyrmgus.lua_command(command)
	
	var entry_description_label = self.find_node("entry_description")
	entry_description_label.connect("meta_clicked", encyclopedia, "open_entry_link", [self])
	
func change_entry(entry):
	self.entry = entry
	
	var menu_area = self.find_node("menu_area")
	var menu_title = menu_area.find_node("menu_title")
	menu_title.bbcode_text = "[center][color=#f4e020]" + entry.get_name() + "[/color][/center]"
	
	if (entry.is_class("CLiteraryText")):
		self.current_page = entry.get_first_page()
	
	update_entry_icon_button()
	update_entry_description()
	update_previous_and_next_buttons()
	update_page_number_visibility()
	
	if (entry.is_class("CLiteraryText") and encyclopedia.last_page and entry.get_last_page() != null):
		change_page(entry.get_last_page())
		encyclopedia.last_page = false
	
func update_entry_icon_button():
	var entry_icon_button = self.find_node("entry_icon_button")
	
	if (encyclopedia.does_category_use_button_lists()):
		entry_icon_button.visible = false
		return
	
	entry_icon_button.set_tooltip(entry.get_name())
	entry_icon_button.set_icon(entry.get_icon())
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		entry_icon_button.set_player_color(faction.get_primary_color())
	elif (encyclopedia.civilization != null):
		entry_icon_button.set_player_color(encyclopedia.civilization.get_default_player_color())
	else:
		entry_icon_button.set_player_color(wyrmgus.get_civilization("neutral").get_default_player_color())

func update_entry_description():
	var entry_description_label = self.find_node("entry_description")
	var entry_description_text = ""
	
	var name_word = null
	if (entry.has_method("get_name_word")):
		name_word = entry.get_name_word()
	entry_description_text += tr("Name") + ": "
	if (name_word != null):
		entry_description_text += "[url=word:" + name_word.get_ident() + "]"
	entry_description_text += entry.get_name()
	if (name_word != null):
		entry_description_text += "[/url]"
	entry_description_text += "\n\n"
	
	if (entry.has_method("get_family_name") and entry.get_family_name().empty() == false):
		var family_name_word = entry.get_family_name_word()
		entry_description_text += tr("Family Name") + ": "
		if (family_name_word != null):
			entry_description_text += "[url=word:" + family_name_word.get_ident() + "]"
		entry_description_text += entry.get_family_name()
		if (family_name_word != null):
			entry_description_text += "[/url]"
		entry_description_text += "\n\n"
	
	if (entry.has_method("get_unit_class") and entry.get_unit_class() != null):
		entry_description_text += "Class:" + " " + entry.get_unit_class().get_name() + "\n\n"
	elif (entry.has_method("get_item_class") and entry.get_item_class() != null):
		entry_description_text += "Class:" + " " + entry.get_item_class().get_name() + "\n\n"
	
	if (entry.has_method("get_civilization") and entry.get_civilization() != null and entry.get_civilization().is_hidden() == false):
		entry_description_text += "Civilization:" + " " + entry.get_civilization().get_name() + "\n\n"
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		entry_description_text += "Faction:" + " " + entry.get_faction().get_name() + "\n\n"
	
	if (entry.has_method("get_plane") and entry.get_plane() != null):
		entry_description_text += tr("Plane") + ": [url=plane:" + entry.get_plane().get_ident() + "]" + entry.get_plane().get_name() + "[/url]\n\n"
		
	if (entry.has_method("get_species")):
		var species_list = entry.get_species()
		if (species_list.size() > 0):
			var sapient_species_list = wyrmgus.get_sapient_species_from_list(species_list)
			var fauna_species_list = wyrmgus.get_fauna_species_from_list(species_list, true)
			if (sapient_species_list.size() > 0):
				entry_description_text += tr("Sapient Inhabitants") + ": "
				
				var sapient_species_name_list = []
				for sapient_species in sapient_species_list:
					sapient_species_name_list.push_back(sapient_species.get_name_plural())
				sapient_species_name_list.sort()
				
				var first_sapient_species = true
				for sapient_species_name in sapient_species_name_list:
					if (first_sapient_species):
						first_sapient_species = false
					else:
						entry_description_text += ", "
					entry_description_text += sapient_species_name
					
				entry_description_text += "\n\n"
					
			if (fauna_species_list.size() > 0):
				entry_description_text += tr("Fauna") + ": "
				
				var fauna_species_name_list = wyrmgus.get_succint_species_string_list(fauna_species_list)
				
				var first = true
				for species_name in fauna_species_name_list:
					if (first):
						first = false
					else:
						entry_description_text += ", "
					entry_description_text += species_name
					
				entry_description_text += "\n\n"
		
	if (entry.has_method("get_description") and entry.get_description().empty() == false):
		entry_description_text += "Description:" + " " + entry.get_description() + "\n\n"
	
	if (entry.has_method("get_quote") and entry.get_quote().empty() == false):
		entry_description_text += "Quote:" + " " + entry.get_quote() + "\n\n"
		
	if (entry.is_class("CUnitType")):
		var cost_strings = get_cost_strings(entry)
		var first_cost = true
		for cost_string in cost_strings:
			if (first_cost):
				entry_description_text += tr("Costs") + ": "
				first_cost = false
			else:
				entry_description_text += ", "
			entry_description_text += cost_string
		if (!first_cost): #the costs string was written, so add a period to it
			entry_description_text += ".\n\n"
		
		if (entry.has_method("get_stat_strings")):
			var stat_strings = entry.get_stat_strings()
			var first_stat = true
			for stat_string in stat_strings:
				if (first_stat):
					if (entry.is_item()):
						entry_description_text += tr("Effects") + ": "
					else:
						entry_description_text += tr("Stats") + ": "
					first_stat = false
				else:
					entry_description_text += ", "
				entry_description_text += stat_string
			if (!first_stat): #the stats string was written, so add a period to it
				entry_description_text += ".\n\n"
	elif (entry.is_class("CLiteraryText")):
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
	elif (entry.is_class("CWord")):
		entry_description_text += tr("Language") + ": " + entry.get_language().get_name() + "\n\n"
		if (entry.get_type() != null):
			entry_description_text += tr("Type") + ": " + entry.get_type().get_name() + "\n\n"
		if (entry.get_gender() != null):
			entry_description_text += tr("Grammatical Gender") + ": " + entry.get_gender().get_name() + "\n\n"
	
	if (entry.has_method("get_background") and entry.get_background().empty() == false):
		entry_description_text += "Background:" + " " + entry.get_background() + "\n\n"
		
	while (entry_description_text.ends_with("\n")):
		entry_description_text = entry_description_text.trim_suffix("\n") #remove unnecessary newlines at the end
		
	entry_description_label.bbcode_text = entry_description_text

func update_previous_and_next_buttons():
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
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_previous_page() != null):
			change_page(self.current_page.get_previous_page())
		elif (entry.get_previous_section() != null):
			encyclopedia.last_page = true
			var new_entry = entry.get_previous_section()
			#set to the last subsection within the previous section
			while (new_entry.get_sections().empty() == false):
				new_entry = new_entry.get_sections().back()
			change_entry(new_entry)
		elif (entry.get_main_text() != null):
			encyclopedia.last_page = true
			if (origin_scene.get("entry") == entry.get_main_text()):
				origin_scene.change_entry(entry.get_main_text())
				exit_entry_menu()
			else:
				change_entry(entry.get_main_text())

func next_button_pressed():
	if (entry.is_class("CLiteraryText")):
		if (self.current_page != null and self.current_page.get_next_page() != null):
			change_page(self.current_page.get_next_page())
		elif (entry.get_sections().empty() == false):
			encyclopedia.open_entry(entry.get_sections().front(), self)
		elif (entry.get_next_section() != null):
			change_entry(entry.get_next_section())
		elif (entry.get_main_text() != null and entry.get_main_text().get_next_section() != null):
			if (origin_scene.get("entry") == entry.get_main_text()):
				origin_scene.change_entry(entry.get_main_text().get_next_section())
				exit_entry_menu()
			else:
				change_entry(entry.get_main_text().get_next_section())

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
	
	if (entry.is_class("CLiteraryText")):
		page_number_label.visible = true
		update_page_number()
	else:
		page_number_label.visible = false
	
func update_page_number():
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

func get_cost_strings(entry):
	var cost_strings = []
	if (entry.get_copper_cost() > 0):
		cost_strings.push_back(str(entry.get_copper_cost()) + " " + tr("Copper"))
	if (entry.get_lumber_cost() > 0):
		cost_strings.push_back(str(entry.get_lumber_cost()) + " " + tr("Lumber"))
	if (entry.get_stone_cost() > 0):
		cost_strings.push_back(str(entry.get_stone_cost()) + " " + tr("Stone"))
	if (entry.get_coal_cost() > 0):
		cost_strings.push_back(str(entry.get_coal_cost()) + " " + tr("Coal"))
	if (entry.get_food_demand() > 0):
		cost_strings.push_back(str(entry.get_food_demand()) + " " + tr("Food"))
	return cost_strings

func exit_entry_menu():
	if (origin_scene.get("entry")):
		encyclopedia.set_category_and_civilization_from_entry(origin_scene.get("entry"))
	queue_free()
	get_parent().remove_child(self)
