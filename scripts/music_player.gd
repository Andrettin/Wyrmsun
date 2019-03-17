extends oamlGodotModule

func _ready():
	self.init("oaml.defs")

func time_of_day_changed(old_time_of_day, new_time_of_day):
	#the time of day can change our main music loop, if the current playing track is set for this
	if (new_time_of_day != null):
		#numbers based on the time of day enum which existed previously, and on which the OAML conditions for the defs were based
		if (new_time_of_day.get_ident() == "dawn"):
			self.set_main_loop_condition(1)
		elif (new_time_of_day.get_ident() == "morning"):
			self.set_main_loop_condition(2)
		elif (new_time_of_day.get_ident() == "midday"):
			self.set_main_loop_condition(3)
		elif (new_time_of_day.get_ident() == "afternoon"):
			self.set_main_loop_condition(4)
		elif (new_time_of_day.get_ident() == "dusk"):
			self.set_main_loop_condition(5)
		elif (new_time_of_day.get_ident() == "early-night"): #FIXME: remember to change this to "early_night" when the ident format is changed
			self.set_main_loop_condition(6)
		elif (new_time_of_day.get_ident() == "midnight"):
			self.set_main_loop_condition(7)
		elif (new_time_of_day.get_ident() == "late-night"): #FIXME: remember to change this to "late_night" when the ident format is changed
			self.set_main_loop_condition(8)
		else:
			self.set_main_loop_condition(0)
	else:
		self.set_main_loop_condition(0)
