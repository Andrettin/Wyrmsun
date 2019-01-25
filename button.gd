extends TextureButton

export var button_text = ""

func _ready():
	self.find_node("button_text").text = self.button_text
