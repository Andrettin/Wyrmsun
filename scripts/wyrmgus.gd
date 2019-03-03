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
	
	self.player_colors["black"] = [
		Color("3a3a50"),
		Color("28283c"),
		Color("222234"),
		Color("1c1c2c"),
		Color("181826"),
		Color("141420"),
		Color("10101a"),
		Color("0c0c14"),
		Color("06060a")
	]
	
	self.player_colors["brown"] = [
		Color("e09f08"),
		Color("aa7700"),
		Color("986400"),
		Color("865200"),
		Color("744100"),
		Color("622f00"),
		Color("542308"),
		Color("46170f"),
		Color("230b07")
	]
	
	self.player_colors["cyan"] = [
		Color("659db6"),
		Color("4b829b"),
		Color("376e87"),
		Color("235a73"),
		Color("17465c"),
		Color("0b3245"),
		Color("052637"),
		Color("001b29"),
		Color("000d14")
	]
	
	self.player_colors["green"] = [
		Color("248c23"),
		Color("187717"),
		Color("0d6b0c"),
		Color("026001"),
		Color("024f01"),
		Color("023d01"),
		Color("062e05"),
		Color("092009"),
		Color("041004")
	]
	
	self.player_colors["orange"] = [
		Color("ffbf36"),
		Color("f88c14"),
		Color("e07612"),
		Color("c86010"),
		Color("b04e10"),
		Color("983c10"),
		Color("822e0e"),
		Color("6c200c"),
		Color("361006")
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
	
	self.player_colors["yellow"] = [
		Color("bab824"),
		Color("93a415"),
		Color("829112"),
		Color("717e10"),
		Color("5d690c"),
		Color("495308"),
		Color("3c440a"),
		Color("30350b"),
		Color("181a05")
	]
