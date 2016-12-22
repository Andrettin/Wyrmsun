DefineUpgrade("upgrade-aelak-tribe-faction", {
	Name = _("Aelak Tribe Faction"),
	EffectsString = "+1 Damage and +5 HP for Impalers"
})

DefineUpgrade("upgrade-issudru-tribe-faction", {
	Name = _("Issudru Tribe Faction"),
	EffectsString = "+1 Damage and +1 Armor for Impalers"
})

DefineUpgrade("upgrade-mabom-tribe-faction", {
	Name = _("Mabom Tribe Faction"),
	EffectsString = "+10 HP and +2 Armor for War Machines"
})

DefineUpgrade("upgrade-sigre-tribe-faction", {
	Name = _("Sigre Tribe Faction"),
	EffectsString = "-5 HP, +2 Damage and +1 Accuracy for Archers"
})

DefineUpgrade("upgrade-aurvangian-tribe-faction", {
	Name = _("Aurvangian Tribe Faction"),
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-khag-tribe-faction", {
	Name = _("Khag Tribe Faction"),
	EffectsString = "-5 HP and +2 Damage for Impalers"
})

DefineUpgrade("upgrade-lggi-tribe-faction", {
	Name = _("Lggi Tribe Faction"),
	EffectsString = "+2 Armor and +1 Evasion for Impalers"
})

DefineUpgrade("upgrade-ezmarria-faction", {
	Name = _("Ezmarria Faction"),
	EffectsString = "+50% Time Efficiency for Lumber Mills and Fugla Forges"
})

DefineUpgrade("upgrade-myridia-faction", {
	Name = _("Myridia Faction"),
	EffectsString = "+50% Backstab Bonus for Swordsmen"
})

DefineUpgrade("upgrade-stilgar-faction", {
	Name = _("Stilgar Faction"),
	EffectsString = "+5% Copper Processing for Town Halls and Strongholds"
})

DefineUpgrade("upgrade-tenebris-faction", {
	Name = _("Tenebris Faction"),
	EffectsString = "+5 HP and +10 Mana for Shamans"
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
	{"BasicDamage", 2},
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

