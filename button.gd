extends TextureButton

export var button_text = ""

func _ready():
	var text = self.button_text
	var text_shadow = self.button_text
	text_shadow = text_shadow.replace("[color=#f4e020]", "")
	text_shadow = text_shadow.replace("[/color]", "")
	self.find_node("button_text").bbcode_text = "[center]" + text + "[/center]"
	self.find_node("button_text_shadow").bbcode_text = "[center]" + text_shadow + "[/center]"
