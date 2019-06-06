extends TextureRect

var source_primary_player_color
var target_primary_player_color
var source_secondary_player_color
var target_secondary_player_color

func _ready():
	self.source_primary_player_color = wyrmgus.get_player_color("violet")

func set_primary_player_color(player_color):
	self.target_primary_player_color = player_color
	if (self.target_primary_player_color and self.source_primary_player_color):
		self.apply_primary_player_color()

func set_secondary_player_color(player_color):
	self.target_secondary_player_color = player_color
	if (self.target_secondary_player_color and self.source_secondary_player_color):
		self.apply_secondary_player_color()

func apply_primary_player_color():
	var material = self.get_material()
	var source_colors = self.source_primary_player_color.get_colors()
	var target_colors = self.target_primary_player_color.get_colors()
	if (source_colors.size() != target_colors.size()):
		printerr("The quantity of color shades differs from source player color \"%s\" to target player color \"%s\"." % [self.source_primary_player_color.get_ident(), self.target_primary_player_color.get_ident()])
	var color_count = min(source_colors.size(), target_colors.size())
	
	for i in range(0, color_count):
		material.set_shader_param("source_primary_player_color_" + str(i + 1), source_colors[i])
		material.set_shader_param("target_primary_player_color_" + str(i + 1), target_colors[i])

func apply_secondary_player_color():
	var material = self.get_material()
	var source_colors = self.source_secondary_player_color.get_colors()
	var target_colors = self.target_secondary_player_color.get_colors()
	if (source_colors.size() != target_colors.size()):
		printerr("The quantity of color shades differs from source player color \"%s\" to target player color \"%s\"." % [self.source_secondary_player_color.get_ident(), self.target_secondary_player_color.get_ident()])
	var color_count = min(source_colors.size(), target_colors.size())
	
	for i in range(0, color_count):
		material.set_shader_param("source_secondary_player_color_" + str(i + 1), source_colors[i])
		material.set_shader_param("target_secondary_player_color_" + str(i + 1), target_colors[i])
