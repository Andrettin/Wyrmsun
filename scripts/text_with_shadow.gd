extends RichTextLabel

func _ready():
	self.find_node("text_shadow").rect_clip_content = self.rect_clip_content

func _set(property, value):
	if (property == "bbcode_text"):
		var text_shadow = value
		text_shadow = text_shadow.replace("[color=#f4e020]", "")
		text_shadow = text_shadow.replace("[/color]", "")
		self.find_node("text_shadow").bbcode_text = text_shadow
