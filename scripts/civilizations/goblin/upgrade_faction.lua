DefineUpgrade("upgrade-faction-aelak-tribe", {
	Name = "Aelak Tribe",
	EffectsString = "+1 Damage and +5 HP for Impalers"
})

DefineUpgrade("upgrade-faction-issudru-tribe", {
	Name = "Issudru Tribe",
	EffectsString = "+1 Damage and +1 Armor for Impalers"
})

DefineUpgrade("upgrade-faction-mabom-tribe", {
	Name = "Mabom Tribe",
	EffectsString = "+10 HP and +2 Armor for War Machines"
})

DefineUpgrade("upgrade-faction-sigre-tribe", {
	Name = "Sigre Tribe",
	EffectsString = "-5 HP, +2 Damage and +1 Accuracy for Archers"
})

DefineUpgrade("upgrade-faction-aurvangling-tribe", {
	Name = "Aurvangling Tribe",
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-dreadskull-tribe", {
	Name = "Dreadskull Tribe",
	EffectsString = "+5 HP and +10 Mana for Shamans"
})

DefineUpgrade("upgrade-faction-khag-tribe", {
	Name = "Khag Tribe",
	EffectsString = "-5 HP and +2 Damage for Impalers"
})

DefineUpgrade("upgrade-faction-lggi-tribe", {
	Name = "Lggi Tribe",
	EffectsString = "+2 Armor and +1 Evasion for Impalers"
})

DefineUpgrade("upgrade-faction-prideblade-tribe", {
	Name = "Prideblade Tribe",
	EffectsString = "+2 Damage for Swordsmen"
})

DefineUpgrade("upgrade-faction-wildfang-tribe", {
	Name = "Wildfang Tribe",
	EffectsString = "+2 Damage for Swordsmen"
})

DefineUpgrade("upgrade-faction-aurvang", {
	Name = "Aurvang",
	EffectsString = "+2 Damage for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-driftwood", {
	Name = "Driftwood",
	EffectsString = "+2 Evasion for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-ezmarria", {
	Name = "Ezmarria",
	EffectsString = "+50% Time Efficiency for Lumber Mills and Fugla Forges",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-myridia", {
	Name = "Myridia",
	EffectsString = "+50% Backstab Bonus for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-stilgar", {
	Name = "Stilgar",
	EffectsString = "+5% Copper Processing for Town Halls and Strongholds",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-tenebris", {
	Name = "Tenebris",
	EffectsString = "+5 HP and +10 Mana for Shamans",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-aelak-tribe",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-faction-issudru-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-faction-mabom-tribe",
	{"Armor", 2},
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-faction-sigre-tribe",
	{"BasicDamage", 2},
	{"Accuracy", 1},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-faction-aurvangling-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-faction-dreadskull-tribe",
	{"HitPoints", 5},
	{"Mana", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-shaman"}
)

DefineModifier("upgrade-faction-khag-tribe",
	{"BasicDamage", 2},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-faction-lggi-tribe",
	{"Armor", 2},
	{"Evasion", 1},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-faction-prideblade-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-wildfang-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-aurvang",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-faction-driftwood",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-ezmarria",
	{"TimeEfficiencyBonus", 50},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"}
)

DefineModifier("upgrade-faction-myridia",
	{"Backstab", 50},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-stilgar",
	{"improve-production", "copper", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"}
)

DefineModifier("upgrade-faction-tenebris",
	{"HitPoints", 5},
	{"Mana", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-shaman"}
)

DefineDependency("upgrade-faction-aurvang",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-driftwood",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-ezmarria",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-myridia",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-stilgar",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-tenebris",
	{"upgrade-goblin-writing", "upgrade-goblin-masonry"}
)
