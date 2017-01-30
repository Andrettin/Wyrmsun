DefineUpgrade("upgrade-faction-aelak-tribe", {
	Name = _("Aelak Tribe Faction"),
	EffectsString = "+1 Damage and +5 HP for Impalers"
})

DefineUpgrade("upgrade-faction-issudru-tribe", {
	Name = _("Issudru Tribe Faction"),
	EffectsString = "+1 Damage and +1 Armor for Impalers"
})

DefineUpgrade("upgrade-faction-mabom-tribe", {
	Name = _("Mabom Tribe Faction"),
	EffectsString = "+10 HP and +2 Armor for War Machines"
})

DefineUpgrade("upgrade-faction-sigre-tribe", {
	Name = _("Sigre Tribe Faction"),
	EffectsString = "-5 HP, +2 Damage and +1 Accuracy for Archers"
})

DefineUpgrade("upgrade-faction-aurvangling-tribe", {
	Name = _("Aurvangling Tribe Faction"),
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-dreadskull-tribe", {
	Name = _("Dreadskull Tribe Faction"),
	EffectsString = "+5 HP and +10 Mana for Shamans"
})

DefineUpgrade("upgrade-faction-khag-tribe", {
	Name = _("Khag Tribe Faction"),
	EffectsString = "-5 HP and +2 Damage for Impalers"
})

DefineUpgrade("upgrade-faction-lggi-tribe", {
	Name = _("Lggi Tribe Faction"),
	EffectsString = "+2 Armor and +1 Evasion for Impalers"
})

DefineUpgrade("upgrade-faction-wildfang-tribe", {
	Name = _("Wildfang Tribe Faction"),
	EffectsString = "+2 Damage for Swordsmen"
})

DefineUpgrade("upgrade-faction-aurvang", {
	Name = _("Aurvang"),
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-ezmarria", {
	Name = _("Ezmarria Faction"),
	EffectsString = "+50% Time Efficiency for Lumber Mills and Fugla Forges"
})

DefineUpgrade("upgrade-faction-myridia", {
	Name = _("Myridia Faction"),
	EffectsString = "+50% Backstab Bonus for Swordsmen"
})

DefineUpgrade("upgrade-faction-stilgar", {
	Name = _("Stilgar"),
	EffectsString = "+5% Copper Processing for Town Halls and Strongholds"
})

DefineUpgrade("upgrade-faction-tenebris", {
	Name = _("Tenebris"),
	EffectsString = "+5 HP and +10 Mana for Shamans"
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

DefineModifier("upgrade-faction-wildfang-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-aurvang",
	{"change-faction-to", "aurvang"}
)

DefineModifier("upgrade-faction-aurvang",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-faction-ezmarria",
	{"change-faction-to", "ezmarria"}
)

DefineModifier("upgrade-faction-ezmarria",
	{"TimeEfficiencyBonus", 50},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"}
)

DefineModifier("upgrade-faction-myridia",
	{"change-faction-to", "myridia"}
)

DefineModifier("upgrade-faction-myridia",
	{"Backstab", 50},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-faction-stilgar",
	{"change-faction-to", "stilgar"}
)

DefineModifier("upgrade-faction-stilgar",
	{"improve-production", "copper", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"}
)

DefineModifier("upgrade-faction-tenebris",
	{"change-faction-to", "tenebris"}
)

DefineModifier("upgrade-faction-tenebris",
	{"HitPoints", 5},
	{"Mana", 10},
	{"Points", 10},
	{"apply-to", "unit-goblin-shaman"}
)

DefineDependency("upgrade-faction-aurvang",
	{"upgrade-faction-aurvangling-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-dreadskull-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-lggi-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-ezmarria",
	{"upgrade-faction-aelak-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-issudru-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-mabom-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-sigre-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-myridia",
	{"upgrade-faction-aelak-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-issudru-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-mabom-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-sigre-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-stilgar",
	{"upgrade-faction-aelak-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-issudru-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-mabom-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-sigre-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-khag-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-wildfang-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-faction-tenebris",
	{"upgrade-faction-aelak-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-issudru-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-mabom-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-sigre-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}, "or", {"upgrade-faction-dreadskull-tribe", "upgrade-goblin-writing", "upgrade-goblin-masonry"}
)
