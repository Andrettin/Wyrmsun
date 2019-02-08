extends TextureButton

export var button_text = ""
const character_highlight_markdown = "~!"
const highlight_color = "#f4e020"
var display_pressed_text = false
var text = ""
var hovered_text = ""

func _ready():
	text = self.button_text
	var find_pos = text.find(character_highlight_markdown)
	while (find_pos != -1):
		text = text.insert(find_pos + character_highlight_markdown.length() + 1, "[/color]")
		text = text.insert(find_pos, "[color=" + highlight_color + "]")
		find_pos = text.find(character_highlight_markdown, find_pos + String("[color=" + highlight_color + "]").length() + character_highlight_markdown.length())
	text = text.replace(character_highlight_markdown, "")
	
	hovered_text = "[center][color=" + highlight_color + "]" + text + "[/color][/center]"
	text = "[center]" + text + "[/center]"
	self.find_node("button_text").bbcode_text = text
	
func check_set_text_display_pressed():
	if (display_pressed_text == false and self.get_draw_mode() == DRAW_PRESSED):
		display_pressed_text = true
		self.find_node("button_text").rect_position += Vector2(2, 2)
		self.find_node("button_text").bbcode_text = hovered_text
	elif (display_pressed_text == true and self.get_draw_mode() != DRAW_PRESSED):
		display_pressed_text = false
		self.find_node("button_text").rect_position -= Vector2(2, 2)
		if (!self.is_hovered()):
			self.find_node("button_text").bbcode_text = text #this is necessary because the mouse counts as not having exited while the button is pressed, regardless of mouse position

func display_text_hovered():
	self.find_node("button_text").bbcode_text = hovered_text

func display_text_not_hovered():
	self.find_node("button_text").bbcode_text = text
