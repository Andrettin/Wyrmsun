extends Control

var wyrmgus_thread = Thread.new()
var wyrmgus = WyrmgusModule.new()

func _ready():
	update_position()
	get_tree().get_root().connect("size_changed", self, "update_position")
	wyrmgus_thread.start(self, "run_wyrmgus")

func run_wyrmgus(userdata):
	wyrmgus.run()

func update_position():
	self.rect_position.x = (OS.window_size.x - 640) / 2
	self.rect_position.y = (OS.window_size.y - 480) / 2
