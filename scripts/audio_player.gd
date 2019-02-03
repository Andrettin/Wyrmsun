extends AudioStreamPlayer

func play_sound_file(file):
	self.stream = load(file)
	self.play(0)
