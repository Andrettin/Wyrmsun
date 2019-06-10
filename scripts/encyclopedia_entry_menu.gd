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
	var entry_title
	if (entry.has_method("get_full_name")):
		entry_title = entry.get_full_name()
	else:
		entry_title = entry.get_name()
	if (entry.is_class("CWord") == false):
		entry_title = tr(entry_title)
		
	menu_title.bbcode_text = "[center][color=#f4e020]" + entry_title + "[/color][/center]"
	
	if (entry.is_class("CLiteraryText")):
		self.current_page = entry.get_first_page()
		
	if (encyclopedia.civilization != null and encyclopedia.civilization.get_victory_background_file().empty() == false):
		var menu_background = self.find_node("background")
		menu_background.texture = wyrmgus.get_civilization_victory_background_texture(encyclopedia.civilization)
	
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
	
	entry_icon_button.set_tooltip(tr(entry.get_name()))
	entry_icon_button.set_icon(entry.get_icon())
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		var faction = entry.get_faction()
		entry_icon_button.set_primary_player_color(faction.get_primary_color())
		entry_icon_button.set_secondary_player_color(faction.get_secondary_color())
	elif (encyclopedia.civilization != null):
		entry_icon_button.set_primary_player_color(encyclopedia.civilization.get_default_primary_player_color())
		entry_icon_button.set_secondary_player_color(encyclopedia.civilization.get_default_secondary_player_color())
	else:
		entry_icon_button.set_primary_player_color(wyrmgus.get_civilization("neutral").get_default_primary_player_color())
		entry_icon_button.set_secondary_player_color(wyrmgus.get_civilization("neutral").get_default_secondary_player_color())

func update_entry_description():
	var entry_description_label = self.find_node("entry_description")
	var entry_description_text = ""
	
	var name_word = null
	if (entry.has_method("get_name_word")):
		name_word = entry.get_name_word()
		if (name_word != null and !should_show_word_link(name_word)):
			name_word = null #don't show links for words without meanings or compound elements, and which derive from no other words
	entry_description_text += tr("Name") + ": "
	if (name_word != null):
		entry_description_text += "[url=word:" + name_word.get_ident() + "]"
	if (entry.is_class("CWord")):
		entry_description_text += entry.get_name()
	else:
		entry_description_text += tr(entry.get_name())
	if (name_word != null):
		entry_description_text += "[/url]"
	entry_description_text += "\n\n"
	
	if (entry.has_method("get_family_name") and entry.get_family_name().empty() == false):
		var family_name_word = entry.get_family_name_word()
		if (family_name_word != null and !should_show_word_link(family_name_word)):
			family_name_word = null #don't show links for words without meanings
		entry_description_text += tr("Family Name") + ": "
		if (family_name_word != null):
			entry_description_text += "[url=word:" + family_name_word.get_ident() + "]"
		entry_description_text += tr(entry.get_family_name())
		if (family_name_word != null):
			entry_description_text += "[/url]"
		entry_description_text += "\n\n"
	
	if (entry.has_method("get_anglicized_name") and entry.get_anglicized_name() != entry.get_name()):
		entry_description_text += tr("Anglicized Name") + ": "
		entry_description_text += tr(entry.get_anglicized_name())
		entry_description_text += "\n\n"
		
	if (entry.has_method("get_unit_class") and entry.get_unit_class() != null):
		entry_description_text += tr("Class") + ": " + tr(entry.get_unit_class().get_name()) + "\n\n"
	elif (entry.has_method("get_item_class") and entry.get_item_class() != null):
		entry_description_text += tr("Class") + ": " + tr(entry.get_item_class().get_name()) + "\n\n"
	
	if (entry.has_method("get_civilization") and entry.get_civilization() != null and entry.get_civilization().is_hidden() == false):
		entry_description_text += tr("Civilization") + ": " + tr(entry.get_civilization().get_name()) + "\n\n"
	
	if (entry.has_method("get_faction") and entry.get_faction() != null):
		entry_description_text += tr("Faction") + ": [url=faction:" + entry.get_faction().get_ident() + "]" + tr(entry.get_faction().get_name()) + "[/url]\n\n"
	
	if (entry.has_method("get_unit_type") and entry.get_unit_type() != null):
		entry_description_text += tr("Unit Type") + ": [url=unit:" + entry.get_unit_type().get_ident() + "]" + tr(entry.get_unit_type().get_name()) + "[/url]\n\n"
	
	if (entry.has_method("get_type") and entry.get_type() != null):
		entry_description_text += tr("Type") + ": " + tr(entry.get_type().get_name()) + "\n\n"
		
	if (entry.has_method("get_primary_color") and entry.get_primary_color() != null):
		entry_description_text += tr("Primary Color") + ": " + tr(entry.get_primary_color().get_name()) + "\n\n"
		
	if (entry.has_method("get_secondary_color") and entry.get_secondary_color() != null):
		entry_description_text += tr("Secondary Color") + ": " + tr(entry.get_secondary_color().get_name()) + "\n\n"
		
	if (entry.has_method("get_level")):
		entry_description_text += tr("Level") + ": " + str(entry.get_level()) + "\n\n"
		
	if (entry.has_method("get_plane") and entry.get_plane() != null):
		entry_description_text += tr("Plane") + ": [url=plane:" + entry.get_plane().get_ident() + "]" + tr(entry.get_plane().get_name()) + "[/url]\n\n"
	
	if (entry.is_class("CFaction") and entry.get_faction_upgrade() != null):
		entry_description_text += tr("Bonus") + ": " + tr(entry.get_faction_upgrade().get_effects_string()) + "\n\n"
	
	if (entry.is_class("CCharacter")):
		if (entry.has_method("get_father") and entry.get_father() != null):
			entry_description_text += tr("Father") + ": "
			var father = entry.get_father()
			if (father.is_usable()):
				entry_description_text += "[url=character:" + father.get_ident() + "]"
			entry_description_text += father.get_full_name()
			if (father.is_usable()):
				entry_description_text += "[/url]"
			entry_description_text += "\n\n"
		if (entry.has_method("get_mother") and entry.get_mother() != null and entry.get_mother().is_usable()):
			entry_description_text += tr("Mother") + ": "
			var mother = entry.get_mother()
			if (mother.is_usable()):
				entry_description_text += "[url=character:" + mother.get_ident() + "]"
			entry_description_text += mother.get_full_name()
			if (mother.is_usable()):
				entry_description_text += "[/url]"
			entry_description_text += "\n\n"
			
		var siblings = entry.get_siblings()
		if (siblings.empty() == false):
			entry_description_text += tr("Siblings") + ": "
			var first_sibling = true
			for sibling in siblings:
				if (first_sibling):
					first_sibling = false
				else:
					entry_description_text += ", "
				if (sibling.is_usable()):
					entry_description_text += "[url=character:" + sibling.get_ident() + "]"
				entry_description_text += sibling.get_full_name()
				if (sibling.is_usable()):
					entry_description_text += "[/url]"
			entry_description_text += "\n\n"
			
		var children = entry.get_children()
		if (children.empty() == false):
			entry_description_text += tr("Children") + ": "
			var first_child = true
			for child in children:
				if (first_child):
					first_child = false
				else:
					entry_description_text += ", "
				if (child.is_usable()):
					entry_description_text += "[url=character:" + child.get_ident() + "]"
				entry_description_text += child.get_full_name()
				if (child.is_usable()):
					entry_description_text += "[/url]"
			entry_description_text += "\n\n"
		
	if (entry.has_method("get_species")):
		var species_list = entry.get_species()
		if (species_list.size() > 0):
			var sapient_species_list = wyrmgus.get_sapient_species_from_list(species_list)
			var fauna_species_list = wyrmgus.get_fauna_species_from_list(species_list, true)
			if (sapient_species_list.size() > 0):
				entry_description_text += tr("Sapient Inhabitants") + ": "
				
				var sapient_species_name_list = []
				for sapient_species in sapient_species_list:
					sapient_species_name_list.push_back(tr(sapient_species.get_name_plural()))
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
		
	if (entry.has_method("get_deities")):
		var deities = entry.get_deities()
		if (deities.empty() == false):
			entry_description_text += tr("Deities") + ": "
			var first_deity = true
			for deity in deities:
				if (first_deity):
					first_deity = false
				else:
					entry_description_text += ", "
				entry_description_text += tr(deity.get_name())
			entry_description_text += "\n\n"
		
	if (entry.has_method("get_abilities")):
		var abilities = entry.get_abilities()
		if (abilities.empty() == false):
			entry_description_text += tr("Learned Abilities") + ": "
			var displayed_abilities = []
			var displayed_ability_count = {}
			for ability in abilities:
				if (!displayed_abilities.has(ability)):
					displayed_abilities.push_back(ability)
					displayed_ability_count[ability] = 1
				else:
					displayed_ability_count[ability] += 1
			var first_ability = true
			for ability in displayed_abilities:
				if (first_ability):
					first_ability = false
				else:
					entry_description_text += ", "
				entry_description_text += tr(ability.get_name())
				if (displayed_ability_count.get(ability) > 1):
					entry_description_text += " (x" + str(displayed_ability_count.get(ability)) + ")"
			entry_description_text += "\n\n"
		
	if (entry.has_method("get_description") and entry.get_description().empty() == false):
		entry_description_text += tr("Description") + ": " + wyrmgus.process_dynamic_string(tr(entry.get_description()), entry) + "\n\n"
	
	if (entry.has_method("get_quote") and entry.get_quote().empty() == false):
		entry_description_text += tr("Quote") + ": " + wyrmgus.process_dynamic_string(tr(entry.get_quote()), entry) + "\n\n"
		
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
				entry_description_text += tr("Author") + ": " + entry.get_author() + "\n\n"
			
		if (entry.get_translator().empty() == false):
			if (entry.get_main_text() == null or entry.get_translator() != entry.get_main_text().get_translator()):
				entry_description_text += tr("Translator") + ": " + entry.get_translator() + "\n\n"
	
		if (entry.get_publisher().empty() == false):
			if (entry.get_main_text() == null or entry.get_publisher() != entry.get_main_text().get_publisher()):
				entry_description_text += tr("Publisher") + ": " + entry.get_publisher() + "\n\n"
	
		if (entry.get_publication_year() != 0):
			if (entry.get_main_text() == null or entry.get_publication_year() != entry.get_main_text().get_publication_year()):
				entry_description_text += tr("Year of Publication") + ": " + str(entry.get_publication_year()) + "\n\n"
	
		if (entry.get_license().empty() == false):
			if (entry.get_main_text() == null or entry.get_license() != entry.get_main_text().get_license()):
				entry_description_text += tr("License") + ": " + entry.get_license() + "\n\n"
			
		if (self.current_page != null):
			if (entry_description_text.empty() == false):
				#add a bit of separation between the description and the text of the page itself
				entry_description_text += "\n\n"
			entry_description_text += tr(self.current_page.get_text())
			
		#draw a table of contents for subsections of the literary text for the last page of the literary text
		var sections = entry.get_sections()
		if (sections.empty() == false and (self.current_page == null or self.current_page.get_next_page() == null)):
			entry_description_text += "\n\n" + tr("Table of Contents") + "\n"
			
			for section in sections:
				entry_description_text += "\n[url=literary_text:" + section.get_ident() + "]"
				entry_description_text += section.get_name()
				entry_description_text += "[/url]"
	elif (entry.is_class("CWord")):
		entry_description_text += tr("Language") + ": " + tr(entry.get_language().get_name()) + "\n\n"
		if (entry.get_type() != null):
			entry_description_text += tr("Type") + ": " + tr(entry.get_type().get_name()) + "\n\n"
		if (entry.get_gender() != null):
			entry_description_text += tr("Grammatical Gender") + ": " + tr(entry.get_gender().get_name()) + "\n\n"
			
		if (entry.get_meanings().empty() == false):
			entry_description_text += tr("Meanings") + ": "
			var first_meaning = true
			for meaning in entry.get_meanings():
				if (first_meaning):
					first_meaning = false
				else:
					entry_description_text += ", "
				entry_description_text += "\"" + tr(meaning) + "\""
			entry_description_text += "\n\n"
			
		if (entry.get_compound_elements().empty() == false):
			entry_description_text += tr("Compound Elements") + ": "
			var first_compound_element = true
			for compound_element in entry.get_compound_elements():
				if (first_compound_element):
					first_compound_element = false
				else:
					entry_description_text += ", "
				if (should_show_word_link(compound_element)):
					entry_description_text += "[url=word:" + compound_element.get_ident() + "]"
				entry_description_text += compound_element.get_name()
				if (should_show_word_link(compound_element)):
					entry_description_text += "[/url]"
			entry_description_text += "\n\n"
			
		if (entry.get_derives_from() != null):
			entry_description_text += tr("Derives From") + ": "
			if (should_show_word_link(entry.get_derives_from())):
				entry_description_text += "[url=word:" + entry.get_derives_from().get_ident() + "]"
			entry_description_text += entry.get_derives_from().get_name()
			if (should_show_word_link(entry.get_derives_from())):
				entry_description_text += "[/url]"
			entry_description_text += " (" + entry.get_derives_from().get_language().get_name() + ")"
			entry_description_text += "\n\n"
			
		var personal_name_genders = entry.get_personal_name_genders()
		if (!personal_name_genders.empty()):
			if (personal_name_genders.size() == wyrmgus.get_genders().size()): #the name is used for all genders
				entry_description_text += tr("Personal Name") + "\n\n"
			else:
				for gender in personal_name_genders:
					entry_description_text += gender.get_name() + " Personal Name\n\n"
				
		if (entry.is_family_name()):
			entry_description_text += tr("Family Name") + "\n\n"
			
		var specimen_name_species = entry.get_specimen_name_species()
		for species in specimen_name_species:
			var specimen_name_genders = entry.get_specimen_name_genders(species)
			if (!specimen_name_genders.empty()):
				if (specimen_name_genders.size() == wyrmgus.get_genders().size()): #the name is used for all genders
					entry_description_text += tr(species.get_name()) + " " + tr("Name") + "\n\n"
				else:
					for gender in specimen_name_genders:
						entry_description_text += tr(gender.get_name()) + " " + tr(species.get_name()) + " " + tr("Name") + "\n\n"
			
		if (entry.is_ship_name()):
			entry_description_text += tr("Ship Name") + "\n\n"
			
		if (entry.is_settlement_name()):
			entry_description_text += tr("Settlement Name") + "\n\n"
	
	if (entry.has_method("get_background") and entry.get_background().empty() == false):
		entry_description_text += tr("Background") + ": " + tr(entry.get_background()) + "\n\n"
		
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
		entry_description_label.bbcode_text = tr(page.get_text())
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
	if (origin_scene.filename == "res://scenes/encyclopedia_entry_menu.tscn"):
		origin_scene.popup() #the origin scene was hidden before in this case, as that was needed to make the scene be displayed properly
	queue_free()
	get_parent().remove_child(self)

func should_show_word_link(word):
	return !word.get_meanings().empty() or !word.get_compound_elements().empty() or word.get_derives_from() != null