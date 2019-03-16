extends Wyrmgus

var wyrmgus_thread

func _ready():
	if (self.wyrmgus_thread == null):
		self.set_oaml_module(music_player)
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()
