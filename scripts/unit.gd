extends Sprite

const SHADER = preload("res://shaders/player_color_shader.shader")
const MATERIAL = preload("res://shaders/player_color_shader.tres")
const SELECTION_BOX_Z_INDEX = 10
const THIS_PLAYER_SELECTION_COLOR = Color("#00fc00")
const ENEMY_SELECTION_COLOR = Color("#fc0000")
const NEUTRAL_SELECTION_COLOR = Color("#fcfc00")

var source_primary_player_color
var target_primary_player_color
var source_secondary_player_color
var target_secondary_player_color
var unit_type
var pixel_offset = Vector2(0, 0)
var draw_level = 0
var tile_pos = Vector2(0, 0)
var map_layer

var selection_box

func initialize_material():
	if (self.source_primary_player_color == null):
		self.source_primary_player_color = wyrmgus.get_player_color("violet")
	
	self.material = MATERIAL.duplicate()
	self.material.shader = load("res://shaders/player_color_shader.shader")

func set_unit_type(new_unit_type):
	self.unit_type = new_unit_type
	self.update_offset()
	self.draw_level = self.unit_type.get_draw_level()
	self.update_z_index()

func set_image(new_image):
	self.texture = new_image.get_texture()
	self.hframes = new_image.get_texture().get_width() / new_image.get_frame_size().x
	self.vframes = new_image.get_texture().get_height() / new_image.get_frame_size().y
	
	if (new_image.get_source_primary_player_color() != null):
		self.source_primary_player_color = new_image.get_source_primary_player_color()
	self.source_secondary_player_color = new_image.get_source_secondary_player_color()

func set_tile_pos(new_tile_pos):
	if (self.selection_box != null):
		for i in range(0, self.selection_box.points.size()):
			self.selection_box.set_point_position(i, self.selection_box.get_point_position(i) - self.position)
	
	self.position = (new_tile_pos * wyrmgus.get_pixel_tile_size()) + self.unit_type.get_half_tile_pixel_size()
	self.tile_pos = new_tile_pos
	self.update_z_index()
	
	if (self.selection_box != null):
		for i in range(0, self.selection_box.points.size()):
			self.selection_box.set_point_position(i, self.selection_box.get_point_position(i) + self.position)

func set_map_layer(new_map_layer):
	var index = new_map_layer.get_index()
	var map = self.get_parent().get_parent()
	self.get_parent().remove_child(self)
	map.map_layers[index].add_child(self)
	self.map_layer = new_map_layer
	self.update_z_index()

func set_pixel_offset(new_offset):
	if (self.selection_box != null):
		for i in range(0, self.selection_box.points.size()):
			self.selection_box.set_point_position(i, self.selection_box.get_point_position(i) - self.pixel_offset)
	
	self.pixel_offset = new_offset
	self.update_offset()
 	
	if (self.selection_box != null):
		for i in range(0, self.selection_box.points.size()):
			self.selection_box.set_point_position(i, self.selection_box.get_point_position(i) + self.pixel_offset)

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

func update_offset():
	self.set_offset(self.unit_type.get_offset() + self.pixel_offset)
	
func update_z_index():
	var new_z_index = self.draw_level * 10
	if (self.map_layer != null):
		new_z_index += self.tile_pos.x * 0.1
	self.set_z_index(new_z_index)

func set_selected(selected, selection_color):
	if (self.is_queued_for_deletion() or self.get_parent() == null):
		return #to prevent issues if the function is called while in the process of freeing
	
	if (selected):
		self.selection_box = Line2D.new()
		self.selection_box.width = 1
		self.selection_box.z_index = SELECTION_BOX_Z_INDEX
		self.selection_box.default_color = selection_color
		self.selection_box.add_point(self.position + self.pixel_offset - (self.unit_type.get_box_size() / 2))
		self.selection_box.add_point(self.position + self.pixel_offset + (Vector2(self.unit_type.get_box_width(), -self.unit_type.get_box_height()) / 2))
		self.selection_box.add_point(self.position + self.pixel_offset + (Vector2(self.unit_type.get_box_width(), self.unit_type.get_box_height()) / 2))
		self.selection_box.add_point(self.position + self.pixel_offset + (Vector2(-self.unit_type.get_box_width(), self.unit_type.get_box_height()) / 2))
		self.selection_box.add_point(self.position + self.pixel_offset - (self.unit_type.get_box_size() / 2))
		self.get_parent().add_child(self.selection_box)
	else:
		if (self.selection_box != null):
			self.selection_box.queue_free()
			self.selection_box = null
			
func remove_unit():
	if (self.selection_box != null):
		self.selection_box.queue_free()
		self.selection_box = null
	self.queue_free()
