DefineQuest("pypos-gold", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 12-21.
	Name = "Pypo's Gold",
	Icon = "icon-gnomish-master-at-arms",
	Description = "An impoverished dwarven noble seeks the gold of the gnomes of Untersberg.\n\nMap: Untersberg",
	World = "nidavellir",
	Civilization = "gnome",
	Map = "maps/nidavellir/untersberg.smp",
	Scenario = "scripts/civilizations/gnome/scenarios/pypos_gold.lua",
	PlayerColor = "blue",
	IntroductionDialogue = "pypos-gold-introduction",
	Hidden = true
})
