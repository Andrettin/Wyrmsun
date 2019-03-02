extends OptionButton

func _ready():
	self.connect("pressed", audio_player, "play_sound_file", ["res://sounds/interface/click.wav"])

func item_selected_sound(var id):
	audio_player.play_sound_file("res://sounds/interface/click.wav")