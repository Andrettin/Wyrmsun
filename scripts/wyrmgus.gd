extends Node

var wyrmgus_thread
var wyrmgus

func _ready():
	if (self.wyrmgus == null):
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus = WyrmgusModule.new()
		self.wyrmgus_thread.start(self, "run")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run(userdata):
	self.wyrmgus.run()

func get_version():
	return self.wyrmgus.get_version()
