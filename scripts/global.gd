extends Node

var wyrmgus_thread
var wyrmgus

func _ready():
	if (self.wyrmgus == null):
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus = WyrmgusModule.new()
		self.wyrmgus_thread.start(self, "run_wyrmgus")

func run_wyrmgus(userdata):
	self.wyrmgus.run()
