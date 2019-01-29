extends AudioStreamPlayer

func play_sound_file(file):
	audio_player.stream = load(file)
	audio_player.play(0)
