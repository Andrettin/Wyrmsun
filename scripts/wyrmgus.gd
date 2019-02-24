extends WyrmgusModule

var wyrmgus_thread
var player_colors = {}
const player_color_shades = 9

func _ready():
	self.initialize_player_colors()
	
	if (self.wyrmgus_thread == null):
		self.wyrmgus_thread = Thread.new()
		self.wyrmgus_thread.start(self, "run_")

#we need this function because starting a function in a new thread with Godot requires that function to take a parameter (i.e. userdata), which the run() function in Wyrmgus does not
func run_(userdata):
	self.run()

func initialize_player_colors():
	self.player_colors["violet"] = [
		Color("b073c2"),
		Color("9848b0"),
		Color("863a9a"),
		Color("742c84"),
		Color("62226e"),
		Color("501858"),
		Color("3e1042"),
		Color("2c082c"),
		Color("160416")
	]
	
	self.player_colors["red"] = [
		Color("d02200"),
		Color("a40000"),
		Color("900000"),
		Color("7c0000"),
		Color("6c0000"),
		Color("5c0000"),
		Color("500000"),
		Color("440000"),
		Color("220000")
	]
