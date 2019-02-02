extends RichTextLabel

func _ready():
	var text_shadow_node = self.find_node("text_shadow")
	text_shadow_node.rect_clip_content = self.rect_clip_content
	if (self.has_font("normal_font")):
		text_shadow_node.add_font_override("normal_font", self.get_font("normal_font"))

func _set(property, value):
	if (property == "bbcode_text"):
		var text_shadow = value
		text_shadow = text_shadow.replace("[color=#f4e020]", "")
		text_shadow = text_shadow.replace("[/color]", "")
		self.find_node("text_shadow").bbcode_text = text_shadow
