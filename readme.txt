############################################################
############################################################
# Wyrmsun
############################################################
############################################################

by Andre Novellino Gouvêa (Andrettin)





############################################################
# License
############################################################

The Stratagus engine, as well as all of the code, artwork, music and storylines included in Wyrmsun are distributed under the GPLv2 license. See the license.txt file for the text of the GPLv2.

For the Stratagus engine source code, see:
https://launchpad.net/stratagus

############################################################
# Changelog
############################################################

-----------------------------------------------------------------------
- 0.1.1
-----------------------------------------------------------------------

* Campaigns
- Campaign maps are now chosen as scenarios through the Single-Player Game button. Completing the quests in those scenarios may unlock other scenarios.

* Events
- Added an event system, which triggers an event for a player if they meet the conditions.
- Added the "Charge Rugnur with the Outpost?" event, which triggers for the first dwarven player to acquire a third mead hall, have 1000 gold and a barracks, and gives the option of obtaining the hero Rugnur.
- Added option to deactivate events in the single player game submenu.
- Added the "The Surghan Mercenaries" event, which gives the option of recruiting the mercenaries in exchange for gold.
- Added the "Greebo's Shinies" event, which gives the player an optional quest, and "Greebo's End", which concludes it.
- Added the "Andvari's Gold" event, which gives the player an optional quest, and "Andvari's Gold is Ours!", which concludes it.
- Added the "The Founding of Knalga" and "The Founding of Kal Kartha" events, which change the player's clan faction into a polity one.
- Added the "Strike a Bargain?" event, which gives the player a major quest. As of now it can only happen in the Chaincolt Foothills map, but in the future it will be possible to happen in any map that fulfills certain conditions.
- Added the "The Last Caravan has Arrived!" and "The Bargain has Failed" events, which conclude the quest given by the "Strike a Bargain?" event in (respectively) success or failure.
- Upon accepting the quest from the "Strike a Bargain?" event, the player now acquires a farm from the gnomish monarch. This effect is specific to the Chaincolt Foothills map.
- It is now possible for events to have images.
- The "Greebo's Shinies" now has a goblin swordsman event image (by b_o).
- Receiving the "The Last Caravan has Arrived!" event while in the Chaincolt Foothills map will result in victory.
- The "Strike a Bargain?" event now creates an extra Axefighter for the raider player in an alternate location, to make it more difficult to avoid the bandits at all while moving the caravans to your Mead Hall.
- A random gnomish monarch name is now generated for the "Strike a Bargain?" event, and it is saved for later scenarios which follow that storyline.
- The raider player's faction in the "Strike a Bargain?" event is now saved for later scenarios which follow that storyline.
- Accepting the quest from the "Strike a Bargain?" event now not only makes the player and the gnomish monarch allied, but also gives them shared vision.

* Factions
- Added an option in the single player game menu to choose which faction of the civilization you want to play as (i.e. which dwarven clan). Right now, this affects which events you get, and in the future it may affect which units, buildings and upgrades are available to you.

* Heroes
- Added Rugnur (dwarf), as well as an older (and more powerful) version of him.
- Rugnur now uses a brown-haired variant of the dwarven axefighter graphics.
- Added Greebo (goblin).

* Maps
- Renamed the maps which had their names in German, translating their names to English.
- Chaincolt Foothills: The player now begins with 400 gold and 200 lumber (previously it was 200 gold and 100 lumber), and AI starting resources have been changed accordingly.
- Chaincolt Foothills: The player now begins with Rugnur instead of an Axefighter, and his survival is necessary for victory.
- Chaincolt Foothills: The gnomes' starting worker is now a Gnomish Worker instead of a Dwarven Miner.
- Chaincolt Foothills: The raider player now begins the scenario with a Steelclad instead of an Axefighter, and with two extra dwarven Scouts, to make it more difficult to destroy him just by using one gnomish recruit to lure the guard out of the raider player's town.
- Fixed a bug that was making the Central Park, Looking Upwards, Northern Lakes, North-South Conflict and Time for Decisions maps be unplayable in multiplayer.

* Miscellaneous
- New explosion graphics (by StumpyStrust and Jinn).
- New tree chopping sounds (from the public domain).
- Added a throwing axe missile.
- Added a dwarven stand ground button for military units.
- Added a dwarven patrol button for military units.
- Added repair, harvest and return goods buttons for the Dwarven Miner.
- The resolution width and height can now be selected separately in the options menu.
- New menu background (by StumpyStrust).
- The dwarven menu buttons have been reworked by Jinn.
- The player no longer uses his multiplayer nick in single-player games.
- A tech tree screen is now accessible by clicking a button in the Single-Player Game menu. In the future, the player will be able to use this screen to obtain new units, buildings and upgrades.
- Added an option to start games with a town hall and five workers.
- New dwarven UI by Jinn.
- New resolution widths available: 1024, 1280, 1360, 1400, 1600, 1680.
- New resolution heights available: 600, 768, 800, 960, 1024, 1050.
- New credits background by b_o.
- Added Load Mod function to the main menu.
- Added "Buildings Selectable by Rectangle" option to the options menu.
- Dejavu Sans Bold 10 and Dejavu Sans Bold 12 fonts reworked by Jinn.

* Units
- The Gnomish Recruit and the Goblin Impaler now have 50 HP each (previously they had 45), so that they are better balanced against the Dwarven Axefighter.
- Dwarven Scout added as a NPC unit.
- Dwarven Ballista added as a NPC unit.
- Gnomish Worker added as a NPC unit.
- Added new unit graphics for the Dwarven Steelclad.
- Gnomish Recruit graphics have been updated.

############################################################
# Credits
############################################################
(see in-game credits and the /graphics/credits.txt and /sounds/credits.txt files)
