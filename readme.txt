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
- 0.1.4
-----------------------------------------------------------------------

* AI
- The AI now properly builds lumber mills (thanks to the Stratagus team).

* Buildings
- Added two new buildings: the dwarven Sentry Tower and the dwarven Guard Tower.

* Factions
- The Gnomish faction is now called "Gnomes".

* Heroes
- Rugnur can now be upgraded to more powerful version if he has enough experience (he needs to be level 2).
- Rugnur (both versions), Baglur and Greebo had their stats altered, bringing their HP down, but increasing their damage.
- Baglur and the more experienced version of Rugnur now use the dwarven steelclad graphics.

* Maps
- Random maps now have a town hall and 5 workers as the default starting units.
- The Caverns of Chaincolt map has been added.

* Miscellaneous
- Added a number of unused graphics to the game, (for instance, variations of the dwarven cursor), to provide modders with more assets to modify.
- Taking screenshots in-game now functions properly (thanks to the Stratagus team).

* Quest
- The Closing the Gates quest has been added.

* Units
- Dwarven axefighters, dwarven steelclads, dwarven scouts and gnomish workers now have random hair variations.
- Unit icons now properly display player color (thanks to the Stratagus team) (known issue: the player color displayed is that of the current player, instead of the unit's owner).
- Units' level is now once again displayed, but depends on experience obtained.
- Dwarven axefighters can now be upgraded to dwarven steelclads if they have reached level 2.
- Dwarven steelclads now have 3 armor instead of the 2 they had previously.
- Units other than axefighters and the first version of Rugnur get an increase in HP when leveling up.

-----------------------------------------------------------------------
- 0.1.3
-----------------------------------------------------------------------

* AI
- The dwarven AI now uses Rugnur (both versions), Baglur, gnomish recruits, goblin spearmen and Greebo as it would use axefighters.

* Buildings
- Added a dwarven lumber mill.
- The dwarven lumber mill can now be acquired in the tech tree screen for use in single player games (in multiplayer games it is always available).
- Added a glyph "building" (graphics by Jinn).
- Human lumber mills are now generated in the random forest, Aquitania and Scandinavia maps, belonging to the neutral player, and they can be "captured" by a player which places a unit adjacent to it (the lumber mill can be recaptured by another player if it is left alone).

* Events
- Since Rugnur and Baglur can now be hired at the barracks, the events which allowed the player to hire them have been removed.

* Interface
- Resolution width of 1366 is now available (thanks to b_o for modifying Jinn's dwarven UI to create the necessary UI components for the new resolution width).
- Updated dwarven miner description in the tech tree screen to reflect their greater efficiency in mining gold, and lesser efficiency in harvesting lumber.

* Heroes
- Rugnur and Baglur can now be hired at the barracks, if the correct conditions are met. Naturally, only one of each of them may be hired per game.
- Greebo's attack now correctly uses the sword sound (previously it was using the spear sound, although he wields a sword).

* Maps
- It is now possible to play a random cave map.
- Improved random critter generation.
- Gnomes now appear in random maps.
- Random Map: Increased rock and water disperson, decreased rock, water and rough land quantity.
- Random Map: Decreased random critter quantity generation.
- A new Nidavellir map has been added: Brown Hills.
- Chaincolt Foothills: Increased starting resource amounts.
- Added the possibility to play symmetric random maps.
- Added a new semi-randomized Earth map, Aquitania.
- Removed maps like "Central Park" and etc. which didn't use Wyrmsun's raw tile system, because it was no longer practical to maintain them, and with the symmetric random maps they are no longer as necessary for balanced multiplayer games.
- The Aquitania and Scandinavia maps now use the forest tileset.

* Quests
- Added information about the "A Bargain is Struck" quest's rewards when clicking its button in the quests submenu.

* Terrain
- The fern, flowers and large flower decoration units now display their proper icons.
- The goblin banner decoration unit now has new graphics for a "death" animation, as well as for a wind-flapping animation (graphics by b_o).
- The graphics of the bones and small rocks decoration units have been reworked by b_o.
- Added forest tileset.

* Units
- The string of the dwarven ballista now rattles when it launches a bolt (graphics and animation code by b_o).
- The dwarven scout can now be acquired in the tech tree screen for use in single player games (in multiplayer games they are always available).
- The icon for the dwarven scout's attack button is now a throwing axe (appearance depends on throwing axe upgrades) (graphics by Jinn).
- Fixed an error in the dwarven scout attack animation code.

* Upgrades
- Added two throwing axe upgrades for the dwarven scout (available at the dwarven lumber mill) (graphics by Jinn).

-----------------------------------------------------------------------
- 0.1.2
-----------------------------------------------------------------------

* Buildings
- Added a Town Hall for the gnomes (graphics by Jinn).
- Added a Farm for the gnomes (graphics by Jinn).
- Added a Barracks for the gnomes (graphics by Jinn).

* Events
- The "Greebo's Shinies" event now requires the map to have a minimum amount of rocks in it, and Greebo spawns near a rock.
- The "Andvari's Gold" event now requires the map to have a minimum amount of water in it, and Andvari spawns near water.
- Added the "The Retired Warrior" event, which gives the hero Baglur to the player it triggers for.
- If the player receives the quest from the "Strike a Bargain?" event, he can't win by destroying all enemies as long as he has the quest.
- In the "Strike a Bargain?" event, the extra raider units are now generated for a secondary raider player, which is allied to the original raider player, but neutral to the gnomes. This was done to avoid the situation in the Chaincolt Foothills map where a gnomish scavenger goes to the mine near Rugnur's outpost with the extra raider units following him, resulting in a very early attack, destroying the red player.

* Heroes
- Added Baglur (dwarf) (icon graphics by Jinn).

* Interface
- Button text is no longer capitalized.
- The borders of the in-game menus are now displayed in a prettier manner.
- It is now possible to access the tech tree screen while playing a map.
- The borders of buttons are now displayed in a prettier manner.
- Clicking on units or building in the tech tree now brings up a panel with the description of that object.
- The "Other" world option for the single player game setup has been replaced by the addition of the "Custom Map" map option regardless if "Earth" or "Nidavellir" have been selected as the current world.
- Added a "Quests" screen accessible from the single player menu, so that the player can keep track of the quests which are available, and which ones are already completed.

* Maps
- A few maps (such as Chaincolt Foothills and Scandinavia) now have decoration units randomly generated in them.
- Chaincolt Foothills: Slightly increased the amount of starting resources for all players.
- Chaincolt Foothills: Choosing to play with the Shorbear Clan dwarven faction will make the human player be the green one instead of red.
- Scandinavia: Added a neutral farm in the southeast of the map (you don't need to defeat it to win the scenario).
- Scandinavia: The purple player now starts the scenario with two scouts.
- It is now possible to choose to play randomly-generated maps (it takes a bit to generate it).
- Chaincolt Foothills: The gnomish player's mead hall has been replaced with a gnomish town hall.
- Chaincolt Foothills: The gnomish player's mushroom farm has been replaced with a gnomish farm.

* Miscellaneous
- Magnifying glass cursor now properly displays its black outline.
- Player 3's color is now actually green, rather than the teal color it was previously (color tones suggested by Jinn). Player 11 remains teal.
- Player 8's yellow color is now milder (previously it was rather bright) (color tones suggested by Jinn).
- Player 7's and player 14's white color is now milder (previously it was rather bright) (color tones suggested by Jinn).
- Player 14's color is now brown, rather than repeating player 6's black (color tones suggested by Jinn).
- Player 16 (the neutral player)'s color is now grey, rather than repeating player 8's yellow (color tones suggested by Jinn).
- Player 12's color is now purple, rather than repeating player 4's violet (color tones suggested by Jinn).
- Player 10's color is now cyan, rather than repeating player 2's blue (color tones suggested by Jinn).
- Player 9's color is now pink, rather than repeating player 1's red (color tones suggested by Jinn).
- Player 13's color is now "fire", rather than repeating player 5's orange (color tones suggested by Jinn).
- Player 15's color is now "radioactive", rather than repeating player 7's white (color tones suggested by Jinn).
- Change the text for "Video Resolution Width" and "Video Resolution Height" to "Resolution Width" and "Resolution Height", because the former were trampling on each other.

* Terrain
- Added bones decoration unit (graphics by b_o).
- Added flowers, large flower, goblin banner, log, fern, twigs and wyrm skeleton decoration units (graphics by b_o).
- Added a mushroom decoration unit (graphics by b_o). This unit begins as a mushroom spore and grows over time; it will be eaten by rats if they get near it.
- Wasteland tileset renamed to "Swamp".
- Added small rocks decoration unit (graphics by b_o).

* Units
- The dwarven miner's lumber harvesting animation speed has been updated to reflect graphically the slower harvesting speed (relative to the gnomish scavenger) it already had de facto.

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
- Chaincolt Foothills: The gnomes' starting worker is now a Gnomish Scavenger instead of a Dwarven Miner.
- Chaincolt Foothills: The raider player now begins the scenario with a Steelclad instead of an Axefighter, and with two extra dwarven Scouts, to make it more difficult to destroy him just by using one gnomish recruit to lure the guard out of the raider player's town.
- Fixed a bug that was making the Central Park, Looking Upwards, Northern Lakes, North-South Conflict and Time for Decisions maps be unplayable in multiplayer.
- Added the "Forgotten Forest" map by Kyran Jackson as a skirmish map.
- Chaincolt Foothills is now playable in multiplayer.
- Added the "River Crossing" map by Kyran Jackson as a skirmish map.

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
- Dejavu Sans Bold 10 and Dejavu Sans Bold 12 fonts reworked by Jinn.

* Units
- The Gnomish Recruit and the Goblin Impaler now have 50 HP each (previously they had 45), so that they are better balanced against the Dwarven Axefighter.
- Dwarven Scout added as a NPC unit.
- Dwarven Ballista added as a NPC unit.
- Gnomish Scavenger added as a NPC unit.
- Added new unit graphics for the Dwarven Steelclad.
- Gnomish Recruit graphics have been updated.
- The unit's "level" now no longer shows in its infopanel, since it was the same for all units and didn't serve any purpose.

############################################################
# Credits
############################################################
(see in-game credits and the /graphics/credits.txt and /sounds/credits.txt files)
