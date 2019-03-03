extends TextureRect

var source_player_color
var target_player_color

func _ready():
	self.source_player_color = wyrmgus.get_player_color("violet")

func set_player_color(player_color):
	self.target_player_color = player_color
	if (self.target_player_color):
		self.apply_player_color()
	
func apply_player_color():
	var material = self.get_material()
	var source_colors = self.source_player_color.get_colors()
	var target_colors = self.target_player_color.get_colors()
	if (source_colors.size() != target_colors.size()):
		printerr("The quantity of color shades differs from source player color \"%s\" to target player color \"%s\"." % [self.source_player_color.get_ident(), self.target_player_color.get_ident()])
	var color_count = min(source_colors.size(), target_colors.size())
	
	for i in range(0, color_count):
		material.set_shader_param("source_player_color_" + str(i + 1), source_colors[i])
		material.set_shader_param("target_player_color_" + str(i + 1), target_colors[i])
	