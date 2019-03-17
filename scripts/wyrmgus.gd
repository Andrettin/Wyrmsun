extends Wyrmgus

var wyrmgus_thread

func _ready():
	if (self.wyrmgus_thread == null):
		self.connect("time_of_day_changed", music_player, "time_of_day_changed", [], CONNECT_DEFERRED)
		
		#if the player is hitting or being hit increment the tension to our music by one
		self.connect("unit_hit", music_player, "add_tension", [1], CONNECT_DEFERRED)
		
		self.set_oaml_module(music_player)
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()
