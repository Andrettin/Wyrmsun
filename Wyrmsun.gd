extends Node

var wyrmgus_thread = Thread.new()
var wyrmgus = WyrmgusModule.new()

func _ready():
	wyrmgus_thread.start(self, "run_wyrmgus")
	pass

func run_wyrmgus(userdata):
	wyrmgus.run()
	