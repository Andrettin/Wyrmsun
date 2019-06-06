extends Popup

const hotkey_markdown = "~!"
var dialogue
var option_buttons = []
var default_text_position
var default_text_size

func _ready():
	var text_label = self.find_node("text_label")
	self.default_text_position = text_label.rect_position
	self.default_text_size = text_label.rect_size

func set_dialogue(dialogue):
	self.dialogue = dialogue
	dialogue.connect("dialogue_node_changed", self, "update_for_new_dialogue_node", [], CONNECT_DEFERRED)
	dialogue.call_first_node()
	
func update_for_new_dialogue_node(dialogue_node, speaker_unit):
	if (dialogue_node == null):
		wyrmgus.decrement_paused_game_dialog_count()
		queue_free()
		return
	
	var title_label = self.find_node("title_label")
	var icon_button = self.find_node("icon_button")
	var text_label = self.find_node("text_label")
	
	if (speaker_unit != null or !dialogue_node.get_speaker_name().empty()):
		title_label.visible = true
		if (speaker_unit != null):
			title_label.bbcode_text = "[center]" + speaker_unit.get_name() + "[/center]"
			
			icon_button.visible = true
			icon_button.set_icon(speaker_unit.get_icon())
			icon_button.set_primary_player_color(speaker_unit.get_player().get_primary_color())
			icon_button.set_secondary_player_color(speaker_unit.get_player().get_secondary_color())
			
			text_label.rect_position.y = self.default_text_position.y
			text_label.rect_size.y = self.default_text_size.y
		else:
			title_label.bbcode_text = dialogue_node.get_speaker_name()
	else:
		title_label.visible = false
		
	if (speaker_unit == null):
		icon_button.visible = false
		text_label.rect_position.y = icon_button.rect_position.y
		text_label.rect_size.y = self.default_text_size.y + (self.default_text_position.y - icon_button.rect_position.y)
	
	text_label.bbcode_text = dialogue_node.get_text()
	
	var panel = self.find_node("panel")
	
	#clear existing option buttons
	for option_button in self.option_buttons:
		option_button.queue_free()
	self.option_buttons = []
	
	var option_index = 0
	var options = dialogue_node.get_options()
	for option in options:
		var option_button = load("res://scenes/large_button.tscn").instance()
		var button_text = ""
		if (!option.get_name().empty()):
			button_text = option.get_name()
		else:
			button_text = "~!Continue"
			
		option_button.set_button_text(button_text)
		var hotkey_find_pos = button_text.find(hotkey_markdown)
		if (hotkey_find_pos != -1):
			var hotkey = button_text.substr(hotkey_find_pos + hotkey_markdown.length(), 1).to_lower()
			var shortcut = load("res://resources/shortcuts/shortcut_" + hotkey + ".tres")
			option_button.shortcut = shortcut
		option_button.hint_tooltip = option.get_tooltip()
		panel.add_child(option_button)
		option_buttons.push_back(option_button)
		option_button.connect("pressed", self, "do_option_effect", [option])
		var default_button_size = option_button.rect_size
		option_button.anchor_left = 0.5
		option_button.anchor_right = 0.5
		option_button.anchor_top = 1
		option_button.anchor_bottom = 1
		option_button.margin_left = default_button_size.x / 2 * -1
		option_button.margin_right = default_button_size.x / 2
		option_button.margin_bottom = -12 - default_button_size.y * (options.size() - 1 - option_index)
		option_button.margin_top = option_button.margin_bottom - default_button_size.y
		
		option_index += 1
		
func do_option_effect(option):
	option.do_effect()