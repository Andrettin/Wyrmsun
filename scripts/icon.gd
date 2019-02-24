extends TextureRect

export var player_color = ""

func _ready():
	var material = self.get_material()
	var source_player_color = wyrmgus.player_colors["violet"]
	for i in range(0, wyrmgus.player_color_shades):
		material.set_shader_param("source_player_color_" + str(i + 1), source_player_color[i])
	
	if (!self.player_color.empty()):
		self.apply_player_color()

func set_player_color(player_color):
	self.player_color = player_color
	if (!self.player_color.empty()):
		self.apply_player_color()
	
func apply_player_color():
	var material = self.get_material()
	var target_player_color = wyrmgus.player_colors[self.player_color]
	for i in range(0, wyrmgus.player_color_shades):
		material.set_shader_param("target_player_color_" + str(i + 1), target_player_color[i])
