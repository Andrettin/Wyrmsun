extends TextureButton

export var button_text = ""
const character_highlight_markdown = "~!"
const highlight_color = "#f4e020"
var display_pressed_text = false

func _ready():
	var text = self.button_text
	var find_pos = text.find(character_highlight_markdown)
	while (find_pos != -1):
		text = text.insert(find_pos + character_highlight_markdown.length() + 1, "[/color]")
		text = text.insert(find_pos, "[color=" + highlight_color + "]")
		find_pos = text.find(character_highlight_markdown, find_pos + String("[color=" + highlight_color + "]").length() + character_highlight_markdown.length())
	text = text.replace(character_highlight_markdown, "")
	
	var text_shadow = text
	text_shadow = text_shadow.replace("[color=" + highlight_color + "]", "")
	text_shadow = text_shadow.replace("[/color]", "")
	self.find_node("button_text").bbcode_text = "[center]" + text + "[/center]"
	self.find_node("button_text_shadow").bbcode_text = "[center]" + text_shadow + "[/center]"
	
	self.connect("draw", self, "check_set_display_pressed_text")

func check_set_display_pressed_text():
	if (display_pressed_text == false and self.get_draw_mode() == DRAW_PRESSED):
		display_pressed_text = true
		self.find_node("button_text").rect_position += Vector2(2, 2)
		self.find_node("button_text_shadow").rect_position += Vector2(2, 2)
	elif (display_pressed_text == true and self.get_draw_mode() != DRAW_PRESSED):
		display_pressed_text = false
		self.find_node("button_text").rect_position -= Vector2(2, 2)
		self.find_node("button_text_shadow").rect_position -= Vector2(2, 2)
