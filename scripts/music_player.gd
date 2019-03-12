extends Node

var oaml_module

func _ready():
	if (self.oaml_module == null):
		self.oaml_module = oamlGodotModule.new()
