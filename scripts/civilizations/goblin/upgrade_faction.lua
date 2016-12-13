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

DefineUpgrade("upgrade-aurvangian-tribe-faction", {
	Name = _("Aurvangian Tribe Faction")
})

DefineUpgrade("upgrade-khag-tribe-faction", {
	Name = _("Khag Tribe Faction")
})

DefineUpgrade("upgrade-lggi-tribe-faction", {
	Name = _("Lggi Tribe Faction")
})

DefineUpgrade("upgrade-ezmarria-faction", {
	Name = _("Ezmarria Faction")
})

DefineUpgrade("upgrade-myridia-faction", {
	Name = _("Myridia Faction")
})

DefineUpgrade("upgrade-stilgar-faction", {
	Name = _("Stilgar Faction")
})

DefineUpgrade("upgrade-tenebris-faction", {
	Name = _("Tenebris Faction")
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
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-aurvangian-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}
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

DefineModifier("upgrade-ezmarria-faction",
	{"TimeEfficiencyBonus", 50},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"}
)

DefineModifier("upgrade-myridia-faction",
	{"Backstab", 50},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-stilgar-faction",
	{"improve-production", "copper", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"}
)

DefineModifier("upgrade-tenebris-faction",
	{"HitPoints", 5},
	{"Mana", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-shaman"}
)

