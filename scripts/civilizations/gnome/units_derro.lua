--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-derro-thug", {
	Name = "Thug",
	Parent = "unit-gnomish-recruit",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "Derro thugs are addicted to a brew made of poisonous mushrooms, which also drive them insane. They use this concoction to enter a battle rage, allowing them to keep on fighting with horrendous injuries as they slice and cackle with maddening glee.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "derro_thug",
	BasicDamage = 11, Evasion = 10, -- +2 damage, -1 evasion
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	ButtonKey = "t"
} )

DefineUnitType("unit-derro-executioner", {
	Name = "Executioner",
	Parent = "unit-gnomish-duelist",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "The poisonous mushroom brew which gives common Derro swordsmen their battlerage exacts a heavy price. The more it is drunk, the more the user's sanity is damaged. The most promising and vicious Derro swordsmen are taken by magisters for a harsh recovery process. Indeed, at the end of it their madness seems gone. But so is much of their personality, leaving little more than a husk, subservient to the magisters' commands.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "derro_executioner",
	BasicDamage = 12, Evasion = 11, Armor = 3, -- +2 damage, -2 evasion, +1 armor
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1
} )

DefineUnitType("unit-derro-shadowguard", {
	Name = "Shadowguard",
	Parent = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "The executioners who prove their skill at arms and start to show a glimmer of morbid cunning are taken by the magisters to receive further training and indoctrination. They are painfully infused with ancient magics that wrack and empower the subjects' body, if they survive the rite. They then become the hidden hand of the Derro clergy, the shadowguards. The few who have fought against a shadowguard and lived often end up half-crazed, telling fantastical stories of dancing shadows.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "derro_shadowguard",
	BasicDamage = 14, Evasion = 13, Armor = 3, -- +2 damage, -2 evasion, +1 armor
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1
} )

-- Derro Magisters (Herbalist) - "Derro magisters are feared for their mastery of ancient magics, calling upon the primal forces of the earth with profane incantations. Legends speak of derro conjurers unleashing a host of slimes, or encasing their enemies within prisons of solid rock. Magisters are the ruling elite of Derro society, with a magical hand and a silver tongue."