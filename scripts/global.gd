extends Node

var wyrmgus_thread
var wyrmgus
var version_major = 3
var version_minor = 5
var version_patch = 5
var version_string = String(version_major) + "." + String(version_minor) + "." + String(version_patch)

func _ready():
	if (self.wyrmgus == null):
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus = WyrmgusModule.new()
		self.wyrmgus_thread.start(self, "run_wyrmgus")

func run_wyrmgus(userdata):
	self.wyrmgus.run()
