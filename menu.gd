extends Node

var wyrmgus_thread = Thread.new()
var wyrmgus = WyrmgusModule.new()

func _ready():
	self.rect_position.x = (OS.window_size.x - 640) / 2
	self.rect_position.y = (OS.window_size.y - 480) / 2
	wyrmgus_thread.start(self, "run_wyrmgus")

func run_wyrmgus(userdata):
	wyrmgus.run()
