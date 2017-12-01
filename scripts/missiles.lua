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
--      (c) Copyright 1998-2017 by Lutz Sammer, Fabrice Rossi, Jimmy Salmon, Crestez Leonard and Andrettin
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

DefineMissileType("missile-arrow", {
	File = "missiles/arrow.png", Size = {32, 32}, Frames = 5, NumDirections = 9,
	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-flaming-arrow", {
	File = "missiles/flaming_arrow.png", Size = {32, 32}, Frames = 5, NumDirections = 9,
	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-goblin-arrow", {
	File = "missiles/goblin_arrow.png", Size = {32, 32}, Frames = 5, NumDirections = 9,
	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-flaming-goblin-arrow", {
	File = "missiles/flaming_goblin_arrow.png", Size = {32, 32}, Frames = 5, NumDirections = 9,
	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-throwing-axe", {
	File = "missiles/throwing_axe.png", Size = {32, 32}, Frames = 15, NumDirections = 9,
	ImpactSound = "throwing-axe-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-flaming-throwing-axe", {
	File = "missiles/flaming_throwing_axe.png", Size = {32, 32}, Frames = 15, NumDirections = 9,
	ImpactSound = "throwing-axe-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-javelin", {
	File = "missiles/javelin.png", Size = {32, 32}, Frames = 5, NumDirections = 9,
	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-bullet", {
	File = "missiles/bullet.png", Size = {32, 32}, Frames = 3, NumDirections = 1,
--	ImpactSound = "bow-hit",
	DrawLevel = 50, Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 0
})

DefineMissileType("missile-dwarven-ballista-bolt", {
	File = "missiles/dwarven_ballista_bolt.png", Size = {64, 64}, Frames = 5, NumDirections = 9,
	DrawLevel = 44, ImpactSound = "explosion",
	Class = "missile-class-point-to-point", Sleep = 1, Speed = 8, Range = 1,
	ImpactMissile = "missile-impact", Pierce = true, PierceOnce = true, ReduceFactor = 50,
	FriendlyFire = true,
	SplashFactor = 4
})

DefineMissileType("missile-flaming-dwarven-ballista-bolt", {
	File = "missiles/flaming_dwarven_ballista_bolt.png", Size = {64, 64}, Frames = 5, NumDirections = 9,
	DrawLevel = 44, ImpactSound = "explosion",
	Class = "missile-class-point-to-point", Sleep = 1, Speed = 8, Range = 1,
	ImpactMissile = "missile-impact", Pierce = true, PierceOnce = true, ReduceFactor = 50,
	FriendlyFire = true,
	SplashFactor = 4
})

DefineMissileType("missile-catapult-sandstone-rock", {
	File = "missiles/catapult_sandstone_rock.png", Size = {32, 32}, Frames = 3, NumDirections = 1,
	ImpactSound = "explosion",
	DrawLevel = 44, Class = "missile-class-point-to-point-cycle-once", Sleep = 1, Speed = 8, Range = 2,
	ImpactMissile = "missile-impact", SplashFactor = 4
})

DefineMissileType("missile-flaming-catapult-rock", {
	File = "missiles/flaming_catapult_rock.png", Size = {32, 32}, Frames = 15, NumDirections = 9,
	ImpactSound = "explosion",
	DrawLevel = 44, Class = "missile-class-point-to-point-cycle-once", Sleep = 1, Speed = 8, Range = 2,
	ImpactMissile = "missile-impact", SplashFactor = 4
})
  
DefineMissileType("missile-slime-glob", {
	File = "missiles/slime_glob.png", Size = {32, 32}, Frames = 15, NumDirections = 9,
	ImpactSound = "squishy-attack",
	DrawLevel = 44, Class = "missile-class-point-to-point-cycle-once", Sleep = 1, Speed = 8, Range = 2,
	ImpactMissile = "missile-impact-slime", SplashFactor = 4
})
  
DefineMissileType("missile-thrown-goblin", {
	File = "missiles/gobtoss.png", Size = {32, 32}, Frames = 40, NumDirections = 9,
	ImpactSound = "explosion",
	DrawLevel = 50, Class = "missile-class-point-to-point-cycle-once", Sleep = 1, Speed = 6, Range = 2,
	ImpactMissile = "missile-impact", SplashFactor = 4
})

DefineMissileType("missile-impact", {
	File = "missiles/siege_projectile_impact.png", Size = {48, 48}, Frames = 10, NumDirections = 1,
	DrawLevel = 44, Class = "missile-class-stay", Sleep = 2, Speed = 16, Range = 1
})

DefineMissileType("missile-impact-slime", {
	File = "missiles/siege_projectile_impact_slime.png", Size = {32, 32}, Frames = 3, NumDirections = 1,
	DrawLevel = 44, Class = "missile-class-stay", Sleep = 4, Speed = 16, Range = 1
})

DefineMissileType("missile-impact-lightning", {
	File = "missiles/lightning_impact.png", Size = {48, 50}, Frames = 4, NumDirections = 1,
	DrawLevel = 44, Class = "missile-class-stay", Sleep = 3, Speed = 16, Range = 1
})

DefineMissileType("missile-axe-twirl", {
	File = "missiles/axe_twirl.png", Size = {72, 72}, Frames = 8, NumDirections = 1,
	DrawLevel = 50, Class = "missile-class-stay", Sleep = 3, Speed = 16, Range = 1
})

DefineMissileType("missile-magic-effect", {
	File = "missiles/magic.png", Size = {32, 42}, Frames = 21, NumDirections = 1,
	DrawLevel = 50, Class = "missile-class-stay", Sleep = 2, Speed = 16, Range = 1, Transparency = 25,
	AlwaysHits = true
})

DefineMissileType("missile-small-fire", {
	File = "missiles/small_fire.png", Size = {32, 48}, Frames = 10, NumDirections = 1,
	DrawLevel = 45, Class = "missile-class-fire", Sleep = 4, Speed = 16, Range = 1
})

DefineMissileType("missile-big-fire", {
	File = "missiles/big_fire.png", Size = {48, 48}, Frames = 10, NumDirections = 1,
	DrawLevel = 45, Class = "missile-class-fire", Sleep = 4, Speed = 16, Range = 1
})

DefineMissileType("missile-explosion", {
	File = "missiles/explosion.png", Size = {64, 64}, Frames = 22, NumDirections = 1,
	DrawLevel = 50, Class = "missile-class-stay", Sleep = 2, Speed = 16, Range = 1
})

DefineMissileType("missile-green-cross", {
	File = "missiles/green_cross.png", Size = {32, 32}, Frames = 4, NumDirections = 1,
	DrawLevel = 150, Class = "missile-class-cycle-once", Sleep = 1, Speed = 16, Range = 1
})

DefineMissileType("missile-always-hits", {
	Size = {32, 32},
	DrawLevel = 50, Class = "missile-class-stay", Sleep = 2, Speed = 16, Range = 1, Transparency = 25,
	AlwaysHits = true
})

--[[ -- unused
if (CanAccessFile("missiles/red_cross.png")) then
	DefineMissileType("missile-red-cross",
		{ File = "missiles/red_cross.png", Size = {32, 32}, Frames = 4, NumDirections = 1,
		DrawLevel = 5, Class = "missile-class-cycle-once", Sleep = 1, Speed = 16, Range = 1 } )
end
--]]

DefineMissileType("missile-none", {
	Size = {32, 32}, DrawLevel = 50,
	Class = "missile-class-none", Sleep = 1, Speed = 16, Range = 1
})

DefineMissileType("missile-hit", {
	Size = {15, 15}, DrawLevel = 150,
	Class = "missile-class-hit", Sleep = 1, Speed = 1, Range = 16
})

DefineBurningBuilding(
	{"percent", 0, "missile", "missile-big-fire"},
	{"percent", 50, "missile", "missile-small-fire"},
	{"percent", 75 } -- no missile
)
