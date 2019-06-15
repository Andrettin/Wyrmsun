extends Node2D

const SCROLL_SPEED = 160 #pixels per second

var map_layers = []

func _ready():
	wyrmgus.connect("unit_placed", self, "create_unit_sprite")
	wyrmgus.connect("map_layer_created", self, "create_map_layer", [], CONNECT_DEFERRED)
	wyrmgus.connect("current_map_layer_changed", self, "change_current_map_layer", [], CONNECT_DEFERRED)

func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		motion += Vector2(0, -1)
	if Input.is_action_pressed("ui_down"):
		motion += Vector2(0, 1)
	if Input.is_action_pressed("ui_left"):
		motion += Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		motion += Vector2(1, 0)
	
	motion *= SCROLL_SPEED
	motion *= delta
	
	if Input.is_action_pressed("ui_ctrl"):
		motion *= 15
	
	var camera = self.find_node("camera")
	camera.position += motion

func create_unit_sprite(unit):
	var unit_type = unit.get_type()
	if (unit_type == null):
		return
	
	var unit_image = unit_type.get_image()
	if (unit_image == null):
		return
	
	var unit_sprite = Sprite.new()
	unit_sprite.texture = unit_image.get_texture()
	unit_sprite.hframes = unit_image.get_texture().get_width() / unit_image.get_frame_size().x
	unit_sprite.vframes = unit_image.get_texture().get_height() / unit_image.get_frame_size().y
	var tile_pos = unit.get_tile_pos()
	unit_sprite.position = (tile_pos * wyrmgus.get_pixel_tile_size()) + unit.get_half_tile_pixel_size()
	
	var map_layer_index = unit.get_map_layer().get_index()
	map_layers[map_layer_index].call_deferred("add_child", unit_sprite)
	
	#delete the unit node if the unit is removed from the map; node that "removed" here can mean that the unit is e.g. inside a building; it may continue existing, it is just not displayed on the map
	unit.connect("removed", unit_sprite, "queue_free", [], CONNECT_DEFERRED)

func create_map_layer(index):
	if (index > 0 and (index - 1) >= map_layers.size()):
		self.create_map_layer(index - 1)
	
	var map_layer = load("res://scenes/map_layer.tscn").instance()
	map_layer.visible = false
	self.add_child(map_layer)
	map_layers.push_back(map_layer)

func change_current_map_layer(old_index, new_index):
	if (old_index != -1):
		map_layers[old_index].visible = false
	if (new_index != -1):
		map_layers[new_index].visible = true
