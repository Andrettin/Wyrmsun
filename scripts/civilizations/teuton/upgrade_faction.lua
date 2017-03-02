--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2014-2017 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineUpgrade("upgrade-faction-bavarian-tribe", {
	Name = "Bavarian Tribe",
	EffectsString = "+1 Damage and +1 Armor for Kriegers"
})

DefineUpgrade("upgrade-faction-cherusci-tribe", {
	Name = "Cherusci Tribe",
	EffectsString = "+5 HP and +1 Damage for Spearmen"
})

DefineUpgrade("upgrade-frisian-tribe-faction", {
	Name = "Frisian Tribe Faction",
	EffectsString = "+5 HP and +1 Armor for Kriegers"
})

DefineUpgrade("upgrade-lombard-tribe-faction", {
	Name = "Lombard Tribe Faction",
	EffectsString = "+2 Damage for Kriegers"
})

DefineUpgrade("upgrade-faction-saxon-tribe", {
	Name = "Saxon Tribe",
	EffectsString = "+5 HP and +1 Damage for Kriegers"
})

DefineUpgrade("upgrade-ubii-tribe-faction", {
	Name = "Ubii Tribe Faction",
	GrandStrategyProductionEfficiencyModifier = {"gold", 5, "silver", 5, "copper", 5},
	EffectsString = "+5% Copper Processing for Rathauses and Burgs"
})

DefineUpgrade("upgrade-faction-varini-tribe", {
	Name = "Varini Tribe",
	EffectsString = "+10 HP for Kriegers"
})

DefineUpgrade("upgrade-faction-austria", {
	Name = "Austria",
	EffectsString = "+1 Speed for Schutzes"
})

DefineUpgrade("upgrade-faction-baden", {
	Name = "Baden",
	EffectsString = "+2 Evasion for Kriegers"
})

DefineUpgrade("upgrade-faction-bavaria", {
	Name = "Bavaria",
	EffectsString = "+1 Damage and +1 Armor for Kriegers"
})

DefineUpgrade("upgrade-faction-carinthia", {
	Name = "Carinthia",
	EffectsString = "+10 HP for Clerics"
})

DefineUpgrade("upgrade-faction-franconia", {
	Name = "Franconia",
	EffectsString = "+10 HP for Ritters"
})

DefineUpgrade("upgrade-faction-holy-rome", {
	Name = "Holy Rome",
	EffectsString = "+2 Armor for Ritters"
})

DefineUpgrade("upgrade-mecklenburg-faction", {
	Name = "Mecklenburg",
	EffectsString = "+2 Armor for Kriegers"
})

DefineUpgrade("upgrade-faction-saxony", {
	Name = "Saxony",
	EffectsString = "+5 HP and +1 Damage for Kriegers"
})

DefineUpgrade("upgrade-faction-swabia", {
	Name = "Swabia",
	EffectsString = "+10 HP for Kriegers"
})

DefineUpgrade("upgrade-faction-switzerland", {
	Name = "Switzerland",
	EffectsString = "+2 Damage for Spearmen"
})

DefineUpgrade("upgrade-faction-thuringia", {
	Name = "Thuringia",
	EffectsString = "+2 Damage for Schutzes"
})

DefineUpgrade("upgrade-faction-wurtemberg", {
	Name = "Wurtemberg",
	EffectsString = "+2 Armor for Kriegers"
})

DefineModifier("upgrade-faction-bavarian-tribe",
	{"change-faction-to", "bavarian-tribe"}
)

DefineModifier("upgrade-faction-bavarian-tribe",
	{"Armor", 1},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-cherusci-tribe",
	{"change-faction-to", "cherusci-tribe"}
)

DefineModifier("upgrade-faction-cherusci-tribe",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-frisian-tribe-faction",
	{"Armor", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-lombard-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-saxon-tribe",
	{"change-faction-to", "saxon-tribe"}
)

DefineModifier("upgrade-faction-saxon-tribe",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-ubii-tribe-faction",
	{"improve-production", "copper", 5}, -- the Ubii were in a central trading position, making them more advanced than other Germanic tribes
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"}
)

DefineModifier("upgrade-faction-varini-tribe",
	{"change-faction-to", "varini-tribe"}
)

DefineModifier("upgrade-faction-varini-tribe",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-mecklenburg-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-austria",
	{"change-faction-to", "austria"}
)

DefineModifier("upgrade-faction-austria",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-bavaria",
	{"change-faction-to", "bavaria"}
)

DefineModifier("upgrade-faction-bavaria",
	{"Armor", 1},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-baden",
	{"change-faction-to", "baden"}
)

DefineModifier("upgrade-faction-baden",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-carinthia",
	{"change-faction-to", "carinthia"}
)

DefineModifier("upgrade-faction-carinthia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-faction-franconia",
	{"change-faction-to", "franconia"}
)

DefineModifier("upgrade-faction-franconia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"}
)

DefineModifier("upgrade-faction-holy-rome",
	{"change-faction-to", "holy-rome"}
)

DefineModifier("upgrade-faction-holy-rome",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"}
)

DefineModifier("upgrade-faction-saxony",
	{"change-faction-to", "saxony"}
)

DefineModifier("upgrade-faction-saxony",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-swabia",
	{"change-faction-to", "swabia"}
)

DefineModifier("upgrade-faction-swabia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-switzerland",
	{"change-faction-to", "switzerland"}
)

DefineModifier("upgrade-faction-switzerland",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-faction-thuringia",
	{"change-faction-to", "thuringia"}
)

DefineModifier("upgrade-faction-thuringia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-wurtemberg",
	{"change-faction-to", "wurtemberg"}
)

DefineModifier("upgrade-faction-wurtemberg",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefinePredependency("upgrade-faction-bavarian-tribe",
	{"upgrade-faction-marcomanni-tribe"}, "or", {"upgrade-faction-quadi-tribe"}, "or", {"upgrade-faction-buri-tribe"} -- must be the Marcomanni or a closely related tribe to found the Bavarian Tribe
)

DefineDependency("upgrade-faction-bavarian-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"} -- needs some more advanced technology (as the Bavarians from the early Middle Ages)
)

DefinePredependency("upgrade-faction-cherusci-tribe",
	{"upgrade-faction-saxon-tribe"}
)

DefineDependency("upgrade-faction-saxon-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefinePredependency("upgrade-faction-varini-tribe",
	{"upgrade-faction-saxon-tribe"}
)

DefinePredependency("upgrade-faction-austria",
	{"upgrade-faction-bavarian-tribe"}
)

DefineDependency("upgrade-faction-austria",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-baden",
	{"upgrade-faction-alamanni-tribe"},
	"or", {"upgrade-faction-suebi-tribe"}
)

DefineDependency("upgrade-faction-baden",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-bavaria",
	{"upgrade-faction-bavarian-tribe"}
)

DefineDependency("upgrade-faction-bavaria",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-carinthia",
	{"upgrade-faction-bavarian-tribe"}
)

DefineDependency("upgrade-faction-carinthia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-franconia",
	{"upgrade-faction-frank-tribe"}
)

DefineDependency("upgrade-faction-franconia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-holy-rome", -- must be either Francia, or one of the stem duchies, or a crownland that gave origin to a Holy Roman Emperor; must also be Christian
	{"upgrade-faction-francia"},
	"or", {"upgrade-faction-bavaria"},
	"or", {"upgrade-faction-franconia"},
	"or", {"upgrade-faction-saxony"},
	"or", {"upgrade-faction-swabia"},
	"or", {"upgrade-faction-austria"}
)

DefineDependency("upgrade-faction-holy-rome",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry", "upgrade-deity-christian-god"}
)

DefinePredependency("upgrade-faction-saxony",
	{"upgrade-faction-saxon-tribe"},
	"or", {"upgrade-faction-cherusci-tribe"},
	"or", {"upgrade-faction-varini-tribe"}
)

DefineDependency("upgrade-faction-saxony",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-swabia",
	{"upgrade-faction-alamanni-tribe"},
	"or", {"upgrade-faction-suebi-tribe"}
)

DefineDependency("upgrade-faction-swabia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-switzerland",
	{"upgrade-faction-alamanni-tribe"},
	"or", {"upgrade-faction-suebi-tribe"}
)

DefineDependency("upgrade-faction-switzerland",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-thuringia",
	{"upgrade-faction-thuringian-tribe"}
)

DefineDependency("upgrade-faction-thuringia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-wurtemberg",
	{"upgrade-faction-alamanni-tribe"},
	"or", {"upgrade-faction-suebi-tribe"}
)

DefineDependency("upgrade-faction-wurtemberg",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

-- Suebi factions which are here because they require a Teuton upgrade

DefinePredependency("upgrade-faction-galicia",
	{"upgrade-faction-suebi-tribe"},
	"or", {"upgrade-faction-semnone-tribe"},
	"or", {"upgrade-faction-marcomanni-tribe"},
	"or", {"upgrade-faction-quadi-tribe"},
	"or", {"upgrade-faction-buri-tribe"}
)

DefineDependency("upgrade-faction-galicia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

-- Frankish factions which are here because they require a Teuton upgrade

DefinePredependency("upgrade-faction-francia",
	{"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-austrasia"},
	"or", {"upgrade-faction-burgundia"},
	"or", {"upgrade-faction-east-francia"},
	"or", {"upgrade-faction-neustria"},
	"or", {"upgrade-faction-salia"}
)

DefineDependency("upgrade-faction-francia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-austrasia",
	{"upgrade-faction-ampsivarii-tribe"},
	"or", {"upgrade-faction-batavian-tribe"},
	"or", {"upgrade-faction-chamavi-tribe"},
	"or", {"upgrade-faction-chatti-tribe"},
	"or", {"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-sugambri-tribe"}
)

DefineDependency("upgrade-faction-austrasia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-burgundia",
	{"upgrade-faction-ampsivarii-tribe"},
	"or", {"upgrade-faction-batavian-tribe"},
	"or", {"upgrade-faction-chamavi-tribe"},
	"or", {"upgrade-faction-chatti-tribe"},
	"or", {"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-sugambri-tribe"}
)

DefineDependency("upgrade-faction-burgundia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-east-francia",
	{"upgrade-faction-ampsivarii-tribe"},
	"or", {"upgrade-faction-batavian-tribe"},
	"or", {"upgrade-faction-chamavi-tribe"},
	"or", {"upgrade-faction-chatti-tribe"},
	"or", {"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-sugambri-tribe"}
)

DefineDependency("upgrade-faction-east-francia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-neustria",
	{"upgrade-faction-ampsivarii-tribe"},
	"or", {"upgrade-faction-batavian-tribe"},
	"or", {"upgrade-faction-chamavi-tribe"},
	"or", {"upgrade-faction-chatti-tribe"},
	"or", {"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-sugambri-tribe"}
)

DefineDependency("upgrade-faction-neustria",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-salia",
	{"upgrade-faction-ampsivarii-tribe"},
	"or", {"upgrade-faction-batavian-tribe"},
	"or", {"upgrade-faction-chamavi-tribe"},
	"or", {"upgrade-faction-chatti-tribe"},
	"or", {"upgrade-faction-frank-tribe"},
	"or", {"upgrade-faction-sugambri-tribe"}
)

DefineDependency("upgrade-faction-salia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

-- Anglo-Saxon factions which are here because they require a Teuton upgrade

DefinePredependency("upgrade-faction-bernice-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefineDependency("upgrade-faction-bernice-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefinePredependency("upgrade-faction-dere-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefineDependency("upgrade-faction-dere-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefinePredependency("upgrade-faction-gumeninga-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefineDependency("upgrade-faction-gumeninga-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefinePredependency("upgrade-faction-bernicia",
	{"upgrade-faction-bernice-tribe"},
	"or", {"upgrade-faction-angle-tribe"},
	"or", {"upgrade-faction-charude-tribe"}
)

DefineDependency("upgrade-faction-bernicia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-deira",
	{"upgrade-faction-dere-tribe"},
	"or", {"upgrade-faction-angle-tribe"},
	"or", {"upgrade-faction-charude-tribe"}
)

DefineDependency("upgrade-faction-deira",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-east-anglia",
	{"upgrade-faction-angle-tribe"},
	"or", {"upgrade-faction-charude-tribe"}
)

DefineDependency("upgrade-faction-east-anglia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-essex",
	{"upgrade-faction-saxon-tribe"},
	"or", {"upgrade-faction-gumeninga-tribe"}
)

DefineDependency("upgrade-faction-essex",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-jutland",
	{"upgrade-faction-jute-tribe"}
)

DefineDependency("upgrade-faction-jutland",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-kent",
	{"upgrade-faction-jute-tribe"}
)

DefineDependency("upgrade-faction-kent",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-mercia",
	{"upgrade-faction-angle-tribe"},
	"or", {"upgrade-faction-charude-tribe"}
)

DefineDependency("upgrade-faction-mercia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-middle-anglia",
	{"upgrade-faction-angle-tribe"},
	"or", {"upgrade-faction-charude-tribe"}
)

DefineDependency("upgrade-faction-middle-anglia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-faction-wessex",
	{"upgrade-faction-saxon-tribe"}
)

DefineDependency("upgrade-faction-wessex",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

