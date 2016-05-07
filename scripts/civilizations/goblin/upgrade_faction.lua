DefineUpgrade("upgrade-aelak-tribe-faction", {
	Name = _("Aelak Tribe Faction")
})

DefineUpgrade("upgrade-issudru-tribe-faction", {
	Name = _("Issudru Tribe Faction")
})

DefineUpgrade("upgrade-mabom-tribe-faction", {
	Name = _("Mabom Tribe Faction")
})

DefineUpgrade("upgrade-sigre-tribe-faction", {
	Name = _("Sigre Tribe Faction")
})

DefineUpgrade("upgrade-khag-tribe-faction", {
	Name = _("Khag Tribe Faction")
})

DefineUpgrade("upgrade-lggi-tribe-faction", {
	Name = _("Lggi Tribe Faction")
})

DefineModifier("upgrade-aelak-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-issudru-tribe-faction",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-mabom-tribe-faction",
	{"Armor", 2},
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-sigre-tribe-faction",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}
)

DefineModifier("upgrade-khag-tribe-faction",
	{"BasicDamage", 2},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-lggi-tribe-faction",
	{"Armor", 2},
	{"Evasion", 1},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)
