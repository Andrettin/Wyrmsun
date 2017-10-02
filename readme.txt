############################################################
############################################################
# Wyrmsun
############################################################
############################################################

by Andrettin





############################################################
# Introduction
############################################################

Wyrmsun is an open-source RTS game which features elements of mythology, history and fiction.

In the Wyrmsun universe a myriad of inhabited planets exist. Humans dwell on Earth, while dwarves inhabit Nidavellir and elves nourish the world of Alfheim. These peoples struggle to carve a place for themselves with their tools of stone, bronze and iron. And perhaps one day they will meet one another, beyond the stars...

Features:
- Retro-style graphics
- 3 playable civilizations, and a number of non-playable ones
- Scenarios playable on a huge map
- Dozens of units, buildings and technologies
- Personal names and traits for units
- Units can earn experience, being able to upgrade to new unit types or acquire new abilities upon level-up
- Persistent heroes, who carry over their level, abilities and items throughout scenarios
- Possibility to create your own custom persistent heroes
- Normal, magic-enchanted and unique items drop from enemies
- Very moddable game, with a built-in mod editor and Steam Workshop integration
- In-game encyclopedia, allowing players to learn more about the units, buildings and other elements of the game, as well as their historical and mythological sources of inspiration

Wyrmsun's lore is based on history and mythology, and on the lore of other open-source fantasy games, such as Battle for Wesnoth.

Getting Wyrmsun on Steam (http://store.steampowered.com/app/370070) provides you with benefits such as streamlined installation, automatic updates and Steam Workshop integration.

############################################################
# License
############################################################

The Stratagus engine, as well as the code and story elements included in Wyrmsun are distributed under the GPL 2.0 license. For the licenses of the graphics, sounds and music, look in the /graphics/credits.txt, /sounds/credits.txt and /music/credits.txt files.

See the license.txt file for the text of the GPL 2.0. The contents of the CC-BY-SA 3.0 license can be found at: http://creativecommons.org/licenses/by-sa/3.0/

Wyrmsun uses a modified version of the Stratagus engine, and its source code can be found here:
https://github.com/Andrettin/Wyrmgus

For the source code of the Stratagus engine itself, see:
https://github.com/Wargus/stratagus

Wyrmsun's data repository can be found here:
https://github.com/Andrettin/Wyrmsun

############################################################
# Changelog
############################################################

-----------------------------------------------------------------------
- 2.8.4
-----------------------------------------------------------------------

* AI
- Improved the performance of AI worker resource gathering assignment.

* Map Editor
- Fixed crash when placing a Settlement Site in the editor.

* Miscellaneous
- Unit and building encyclopedia entries now contain their costs and stats.
- Stone piles are now always generated with 400 stone (previously they were randomly generated with 200 or 400 stone).
- Fixed issue which caused Germanic AI players to not automatically pick a faction in custom games.
- Fixed issue which caused the required settlements for a faction to be displayed even outside of the Scenario mode.
- The Gothic civilization is now playable.
- Added buttons in the minimap interface area to change between different map layers in Scenario mode.
- Fixed a save game crash which could happen if a hero was within a transport or building when the game was saved.

* Multiplayer
- Fixed issue which could cause a desync if the "Computer Opponents" option had been selected by the host before a player had joined.
- Added option to select AI difficulty, if the "Computer Opponents" option is active.

* Scenarios
- Added the Thunraz's Servant scenario.

* Units
- Added dwarven Thunderer (icon by Jinn and unit graphics by Jinn and b_o).
- Added goblin Gunpowder Infantry (icon by Jinn and unit graphics by Jinn and b_o).
- Added Gothic Horse Rider (icon by Exidelo).
- Renamed Teuton Kriegers to Swordsmen, Adels to Veteran Swordsmen and Truhtins to Warlords.
- Renamed Teuton Schutzes to Archers.
- Renamed Teuton Ritters to Knights and Landesherrs to Knight Lords.
- Renamed the Teuton Rathaus to Town Hall, and the Burg to Stronghold.

* Upgrades
- Added Gunpowder upgrade (researchable at the Academy/University), which unlocks gunpowder units.

-----------------------------------------------------------------------
- 2.8.3
-----------------------------------------------------------------------

* Buildings
- Dwarven Walls, Goblin Walls and Teuton Walls are now buildable (graphics by Jinn). Walls require Masonry to be available.

* Factions
- In the Scenario mode, founding certain factions now depends on possessing the correct settlements.

* Items
- Added Crown item.
- Added five new unique items belonging to The Dragon's Stars item set, the Dragon's Tail (spatha), the Dragon's Head (crown), the Dragon's Eye (amulet), the Dragon's Tongue (ring) and the Dragon's Jaw (shield).
- Added the Hippopotamus' Head unique crown.
- Added the "Fiery" magic affix.
- Unique item encyclopedia entries now display their magic level.

* Miscellaneous
- Fixed a crash which could occur after loading a saved game.

* Quests
- Fixed issue which caused the Gathering Materials quest's initial dialogue to not trigger.

* Scenarios
- Added the "Journey to Haimadala's Stones" (side-)quest for the Haimadala's Progeny scenario.

* Units
- Added button to transports to unload all units within (icon by Exidelo).
- Renamed the "Kogge" to "Cog".

-----------------------------------------------------------------------
- 2.8.2
-----------------------------------------------------------------------

* Buildings
- Added a button to salvage your own buildings, destroying them and restoring resources used in their construction. The quantity of resources restored starts out at 75%, but decreases as Masonry and Architecture are researched. The percentage of resources restored also varies according to how much HP out of its max HP a building has.
- Farms now have slightly greater territory ownership influence range.

* Items
- Items sold at the Market now have a smaller chance of being magic or unique.
- Added support for unique item sets, providing a bonus if all items in a set are equipped.
- Added a new unique broad sword, Wolf's Claw.
- Added new unique boots, Alsvid's Hooves and a new unique amulet, Arvak's Ear. These items are part of the The Sun Horses' Stars unique item set.
- The unique broad sword Brimir is now stronger.
- Added the magic affixes "Extinguishing", "Giant's", "Wolf's" and "of the Wolf".

* Map Editor
- Wood Piles now display their different variations in the editor.
- Gold Rocks now display their different variations in the editor.
- Fixed performance issue when placing large blocks of tiles in the editor.

* Maps
- Revamped the Svarinshaug map, so that it now uses data from the Nidavellir map template and is 256x256.
- Revamped the Tanais map, so that it now uses data from the Earth map template and is 256x256.

* Miscellaneous
- Added 1200 as a possible resolution height.
- Fixed an issue which could cause a crash with saved games.

* Scenarios
- The "On the Vanaquisl" quest has been moved to the Scenario mode as its own scenario.
- Added hint to the "The First Dwarves" scenario explaining that stone can be harvested from rock tiles.

-----------------------------------------------------------------------
- 2.8.1
-----------------------------------------------------------------------

* Buildings
- Town Halls can now only be built on top of Settlement Sites.
- Smithies can now store Copper, Silver, Gold, Coal and Diamonds. Smithies now can only be built within a certain distance of deposits and mines.
- Added Diamond Deposit/Mine (recolor of the Copper Deposit/Mine by Kriss7475). Diamonds convert to copper at a 800% rate.
- Decorations are now removed when a building is constructed over a tile.
- Added a Mason's Shop building for the dwarves, which stores stone and improves its processing by 25% (graphics by Jinn).

* Map Editor
- Fixed crash which happened when placing a railroad over a neutral copper mine.
- Deposits and other resource units can no longer be set to store more than 1 million of their respective resource, as overly large numbers could cause issues for the game.
- When creating a new map, the map width and height can now be chosen by inputing a number. Any number between 32 and 512 can be chosen.
- Fixed player properties screen issue for new maps.
- Added option to delete custom unit types.
- Added drop-down in the unit type graphic properties to choose a shadow image for the unit type.

* Maps
- Fixed issue which caused some maps (i.e. Aquitania) to potentially start with tile irregularities.
- Increased the starting stone in the Little Island custom map, to allow give dwarven players an easier time in constructing buildings.
- Added a starting town hall for players in the Central Park, Little Island, Looking Upwards, No Man's Land, North-South Conflict, Northern Lakes and Time for Decisions custom maps.
- Increased the amount of space around deposits in random maps.
- Unicorns (and other animals) can no longer start trapped in a single tile between trees/rocks on random custom maps.
- Yale Caves are now generated for random custom maps which use the Swamp tileset.

* Miscellaneous
- Fixed the "northwest-northeast-inner" border graphics, which were incorrectly using the graphics for the "northwest-northeast-southwest-inner" border.
- The initial random seed for the game now varies according to the computer's time and date, so that random maps should no longer yield the same result multiple times.
- Added an encyclopedia page explaining the No Randomness mode in the Game Concepts section.
- Added Diamond Rock (recolor of the Copper Rock by Kriss7475).
- Muspelheim and Niflheim are now described as planes, rather than worlds. Helheim has now been subsumed into Niflheim, which is more accurate to the mythology.

* Scenarios
- A diamond deposit is now generated for the Nidavellir map.
- Added passages between the patches of dry mud within the Joruvellir desert.
- Added some rock and tree tiles to Joruvellir.
- Added four Yale Caves to Joruvellir.

* Terrain
- Terrain features (groups of tiles with the same terrain type and with a particular name for the feature) are now properly stored when saving a game.
- Decorations are now removed when a pathway is built over a tile.

* Units
- Increased transport ship trade capacity.
- Increased transport ship armor.
- Added dwarven Ballista Warship (graphics by Jinn).

* Upgrades
- Masonry is now researched at the Mason's Shop for the dwarves.

-----------------------------------------------------------------------
- 2.8.0
-----------------------------------------------------------------------

* Buildings
- Players now have a territory, which is generated by the player's buildings. Players cannot build on the territory of another player.
- Buildings now show the name of the settlement they belong to. A new settlement name is generated when a town hall is built, and buildings are assigned to the settlement of the closest town hall.
- Fixed issue which caused severely a damaged building's fire to disappear when it was almost at 0 HP.
- Added a University building for the Teutons (graphics by Jinn).
- Added an Academy building the Goblins (graphics by Jinn).
- Added an Academy building the Dwarves (graphics by Jinn).

* Factions
- Forming Northumbria now requires that no other player have the Bernicia or Deira faction.
- Anglo-Saxon factions can now form "Englaland", instead of England. England itself can be formed when higher technological knowledge has been obtained, and forming the faction changes personal names etc. to English (Anglo-Saxons use Old English).

* Items
- The tooltip for literary works now describes the effects of increasing their respective knowledge stat.

* Map Editor
- Fixed an issue which prevented closing the player properties window by clicking "OK".
- Fixed an issue which could potentially cause the map editor to freeze when loading a map.

* Miscellaneous
- Removed support for resolutions lower than 800x600, so that more content may be added to the interface later on (i.e. new icons at the top bar).

* Multiplayer
- Fixed a potential desync cause related to unique item drop.

* Upgrades
- Added the Shield Wall (+2 armor for infantry) and Svinfylking (+2 damage for infantry) military doctrine upgrades, researched at the barracks (icons by Exidelo). These two upgrades are mutually exclusive.
- Added the Architecture upgrade (icon by Exidelo), which increases HP and armor for buildings. This upgrade can be researched at the University/Academy.
- Added the Mathematics upgrade (icon by Exidelo), which decreases trade cost for Markets. Engineering and Alchemy now require Mathematics. This upgrade can be researched at the University/Academy.
- Engineering and Alchemy are now researched at the University/Academy.

-----------------------------------------------------------------------
- 2.7.3
-----------------------------------------------------------------------

* Buildings
- Added the Yale Cave (graphics by Jinn), which randomly spawns yales. A Yale Hunting Lodge can be built upon it (similar to how mines are built on top of deposits), providing Food, and allowing the Leather luxury resource to be harvested from it (max. 3 workers). The Yale Hunting Lodge has generic and dwarven graphic variants.
- Dwarven Yale Pens can now produce Leather (max. 3 workers).

* Items
- Added Joruvellir Wooden Shield item.
- Added a new unique item, Hlewagastiz's Horn.

* Miscellaneous
- Portraits in encyclopedia entries and dialogues now have a frame.
- Added Leather luxury resource, which is automatically sold at the Market.

* Scenarios
- The "A Rocky Home" quest in the "The First Dwarves" scenario now requires building a Yale Hunting Lodge instead of killing 8 Yales.
- Added the "A Home in the Fields of Sand" scenario.

* Terrain
- Added Desert Sand terrain (graphics by Jinn).
- Fixed crash which could occur if the player built a structure on top of a pathway.

* Units
- Dwarven Scouts, Pathfinders and Explorers now have a black-haired variation.
- Fixed the position of the Banner in the goblin Worker structure submenu, so that it doesn't overlap with the Railroad.

-----------------------------------------------------------------------
- 2.7.2
-----------------------------------------------------------------------

* AI
- Improved the AI attack back code.
- The AI is now better capable of conducting naval assaults.

* Buildings
- Fixed issue with burning building graphics not appearing.
- Workers can now build Railroads (which require the Engineering upgrade). Railroads are necessary for minecarts to move on, and provide the same speed bonus as roads to units.

* Factions
- Added the dwarven Oinling Clan (+5% Copper Processing).

* Heroes
- Added a few new wyrm heroes (without specific portraits), recruitable at kobold mercenary camps.
- Fixed issue which made recruitable fauna heroes' stats to not appear properly when hovering over their buttons.
- Vindalf can no longer upgrade to a dwarven Explorer.

* Items
- Added the Elixir of Dexterity, Elixir of Intelligence, Elixir of Strength and Elixir of Vitality items. These elixirs give small permanent bonuses to the unit which drinks them. Each elixir may be consumed once per unit/hero.
- Cheese and Carrots are no longer sold at farms, being instead randomly added to the pool of items for sale in markets.

* Miscellaneous
- Minor pathfinding performance improvement.
- Fixed crash which could happen when a transport ship was destroyed while a unit with a level-up point was inside.
- Fixed a number of SDL rendering issues.
- Fixed a save game loading crash cause.
- Units are now categorized by civilization in the encyclopedia.

* Quests
- Added a new side-quest for the Haimdala's Progeny scenario, "Slay the Wild Folk at Hlesey".
- Added a new side-quest for the The First Dwarves scenario, "Andvari's Gold".

* Scenarios
- The scenario maps now contain tree stumps.
- Objectives in the Scenario mode are now categorized according to the quest they belong to.

* Terrain
- Fixed issue with pine tree and mud tiles appearing black on the minimap under SDL rendering.
- Added Desert Sand tiles (by Jinn).

* Units
- Caravans can now be built at Markets, allowing trade with foreign markets.
- Fixed issue which caused transporters to unload all units inside if a transporter unit's button was clicked while the transporter wasn't on a coast.
- Fixed issue with corpse sight being greater than it should be.
- A worker who is carrying resources will now return them to a stronghold upon right-clicking on it, instead of garrisoning in it.
- A worker will now repair damaged garrisonable structures when right-clicking on them, isntead of garrisoning in them.
- Units now only auto-attack while following another unit if already close to them.
- Siege engines now require the Engineering upgrade to be produced.
- Added Minecart, which can gather metals with greater carrying capacity than a normal worker. Minecarts can only move on railroads, and require the Engineering upgrade.
- Added Kobold Slasher (upgrade of the Kobold Footpad, icon by Exidelo).
- Added Kobold Champion (upgrade of the Kobold Slasher, icon by Exidelo).

* Upgrades
- Added Engineering upgrade (icon by Exidelo) at the Smithy, which allows siege engines, railroads and minecarts.
- Alchemy is now researched at the Smithy.

-----------------------------------------------------------------------
- 2.7.1
-----------------------------------------------------------------------

* Abilities
- The Terror spell now lasts for half as long as it did previously.
- Improved the performance of aura application (specially that of the Leadership Aura).

* AI
- Improved the road-building AI.
- Improved the performance of the AI attack code.
- Improved the performance of the AI healing item pick-up code.
- AI units will now correctly use wyrm hearts to heal themselves.

* Heroes
- Fixed issue which allowed Germanic worker heroes to build Germanic buildings even if controlled by another civilization.
- Added an option to re-generate the custom hero name in the custom hero creation menu.

* Items
- Fixed issue which allowed items to be used or dropped from the unit's main command panel if there were no button there, and its inventory also had an item button at that same spot.

* Miscellaneous
- Fixed a save game load crash issue.

* Scenarios
- Fixed issue which caused the random generation to sometimes put wood piles and stone piles too close to the player's starting location, blocking their units.

* Units
- Fixed issue which caused units to attack back against bats even if they had been given another order.
- Fixed issue which caused the "Return Goods" button to be replaced with the "Stand Ground" one when different worker unit types (i.e. Dwarven Miners and Skilled Miners) were grouped together.
- Improved the performance of unit target-finding.

-----------------------------------------------------------------------
- 2.7.0
-----------------------------------------------------------------------

* Buildings
- Added Market buildings for the Dwarves, Germanics, Goblins and Teutons (graphics by Jinn). Markets allow trading resources.
- Mercenary Camps are now owned by mercenary company neutral factions.
- Carpenter's Shops and Lumber Mills now have the option of allowing workers to produce the Furniture luxury resource in them, which is automatically sold if a Market is present. Up to five workers can produce furniture in a lumber mill at the same time.
- Carpenter's Shops and Lumber Mills now cannot be built too close to town halls.
- A maximum of ten workers can now gather resources from a mine at the same time.
- Increased the time it takes for unit stocks to recharge.
- Scrolls are no longer bought in Temples, but in Markets.
- Markets provide a wide selection of purchasable items, including magic and (very rarely) unique ones. Which items appear depends on what you have. For example, swords only appear if you have a smithy, magic affixes depend on your deity or religion, and so forth.
- Added a message if a unique item becomes available for sale in a Market, so that the player doesn't have to worry about missing it.
- The AI now makes use of Mercenary Camps.
- Fixed issue which destroyed unique mines built upon deposits when loading a saved game.
- Fixed issue which reset the resources held of unique deposits/mines when a mine was destroyed, or built upon a deposit.
- Goblins can now build Banners, which provide the effects of Leadership Aura to nearby friendly units in combat.

* Civilizations
- Anglo-Saxon units now have English voices (by Johnvarker).

* Events
- The "Brawl at the Barracks" random event can no longer fire if the player does not have a town hall. This is to prevent the player losing the necessary resources to build a town hall in scenarios where the player starts with a barracks but no town hall (such as Haimdala's Progeny).

* Factions
- Fixed issue which prevented the Angle Tribe and Jute Tribe factions from being formable via the "Found a Faction" submenu.
- Added Dwarven, Ettin and Kobold Mercenary Company factions.

* Heroes
- Fixed issue which prevented Frankish hero Kregars from upgrading to Ritars if the player didn't have a Frankish faction.
- The AI now recruits heroes.

* Items
- Books now increase their respective knowledge stat by 5, rather than 3.
- Improved literary work dependencies, so that they can be available for multiple civilizations.

* Miscellaneous
- Fixed crash which could occur when selecting more than 36 units at the same time.
- Added resource trade at Market buildings. By default resource trade has an extra cost of 30% (25% for goblin markets), which can be reduced by researching Coinage.
- Added "Industry", "Laws" and "Trade" entries to the Game Concepts section of the encyclopedia.
- Disabled buttons no longer have a hotkey.
- Fixed crash which could happen when loading saved games made in certain maps.
- Fixed issue with the rally point button having the same hotkey as some trained units at the barracks.
- Fixed the Buy Healing Potion hotkey (it is now properly H, rather than C).
- Fixed the Teuton Cleric's hotkey to be L, rather than C, as that conflicted with the hotkey for the Christianity upgrade.

* Scenarios
- Fixed some issues which could cause the Haimdala's Progeny scenario quests to break if the player changed their faction from a Germanic one too soon.

* Terrain
- Fixed issue which caused cleared rock on dirt and dry mud to not be buildable upon.
- Doubled the time it takes for forests to regrow.
- Dungeon walls and cave walls now block unit sight.

* Units
- Workers can now build roads, which increase movement speed by 25% (road graphics by Jinn). Roads require Masonry.
- The Surghan Mercenary portraits are now used for Axefighters, Steelclads and Stonelords hired from the Surghan Mercenaries faction. Dwarven custom heroes can now be a Surghan Axefighter.
- Any level 3 organic unit now has access to an inventory.
- Fixed issue which caused worker inventories to not have a "cancel" button.
- Fixed issue which made units move to autocast even when ordered to stand ground.
- Improved unit target-finding code for subterranean maps.
- Fixed an issue which allowed a unit to pick items over its inventory capacity by using waypoints.
- Fixed issue which sometimes caused a ring of unexplored terrain to appear around units when loading a saved game.
- Transport ships can now conduct trade with the docks of other players.

* Upgrades
- The buttons for upgrades that have already been researched now show up, grayed.
- Coinage now decreases trade cost for markets.
- Added the "Serfdom" law upgrade (icon by Mrmo Tarius), which reduces worker cost but also productivity.
- Added the "Free Workers" law upgrade (icon by Jinn), which is acquired by default and is incompatible with Serfdom (acquiring this upgrade removes Serfdom and vice-versa). The costs of this upgrade scale with quantity of workers owned.

-----------------------------------------------------------------------
- 2.6.1
-----------------------------------------------------------------------

* Heroes
- Fixed a bug which caused a crash when trying to create a human custom hero.

* Miscellaneous
- Buttons for units and upgrades whose prerequisites haven't been met now show up (albeit disabled), and display the requirements when hovered over.

* Units
- Up to 200 units can now be selected at the same time.

-----------------------------------------------------------------------
- 2.6.0
-----------------------------------------------------------------------

* AI
- The AI now receives half of the resources it gathers on Easy difficulty.

* Buildings
- Now up to four scrolls/books can be bought in temples (previously it was three).
- Added Germanic Temple (graphics by Jinn).

* Civilizations
- The Anglo-Saxons, Franks and Suebi are now handled as their own civilizations, to make it simpler for them to have their own personal names and such.

* Factions
- Faction change is now handled by a submenu in town hall / stronghold buildings. Researching a writing upgrade no longer triggers a faction change automatically, instead allowing the player to pick a polity faction. To change from the Germanic civilization to the Teuton one, the player now needs to pick a Teuton faction in this manner while playing a Germanic tribe.

* Heroes
- Heroes without unique portraits can now also be recruited, and are likewise also persistent.
- Heroes are now recruited at town hall and stronghold buildings instead of at barracks buildings.
- Town halls, strongholds and mercenary camp buildings now allow choosing from up to four heroes to recruit.
- Fixed issue which prevented goblins from recruiting heroes.
- Hero recruitment buttons now show heroes' stats.
- Replaced the custom hero unit button which appears on the right border of the map with buttons for up to three heroes, both custom and non-custom.
- Custom heroes can now choose their deity or religion.

* Items
- Added "Scroll of Teuton Allegiance", to allow changing from the Suebi swordsman to the Teuton swordsman.

* Miscellaneous
- Deity entries in the encyclopedia now display their portraits.
- Players that are hostile to you will now be considered as your enemy, even if you don't have a hostile diplomatic stance towards them.
- Cold damage now has a small chance to cause slow status on organic units.
- Lightning damage now has a small chance to cause stun status on organic units.
- Implemented religion system, with players being able to choose a deity or religion at the temple building.
- Added extra check regarding whether fullscreen is available for a particular resolution in the player's setup.
- Greatly improved the efficiency of memory usage.
- Removed the Grand Strategy mode to focus on the game's core RTS gameplay, as the maintenance time cost of keeping both systems was too high.

* Scenarios
- Added Karla and Thrahila as heroes to their respective tribes for the Haimdala's Progeny scenario.

* Terrain
- Fixed issue which prevented trees from regrowing.
- Greatly increased the amount of stone contained in each rock tile from 400 to 10,000, so that destroying rock tiles becomes much harder.

* Units
- Added Germanic and Teuton level 3 swordsmen.
- Added portrait for the Frankish level 3 swordsman for those who have the Frankish Faction Flair DLC (by Exidelo).
- Added an upgrade to the Teuton cavalry (icon by Jinn).
- Added portrait for the Frankish level 3 knight for those who have the Frankish Faction Flair DLC (modification of the Frankish horseman icon by Exidelo).
- Changed the unit type names of the Suebi swordsman, the Frankish swordsman and the Frankish horseman to be based on Old High German words (rather than modern German ones), to better reflect the time period they represent.
- The name of Frankish and Teuton spearmen has been changed to English, as "Speerkampfer" didn't feel properly early medieval.
- Added Germanic Priest unit, the Gudjan (icon by Jinn and unit graphics by Jinn and b_o).
- Units now go search for an attacker when hit by a projectile fired by a unit that is out of sight range.

-----------------------------------------------------------------------
- 2.5.3
-----------------------------------------------------------------------

* AI
- Improved the Easy difficulty AI.

* Buildings
- Added proper names for Barrackses.
- Added proper names for Farms.

* Factions
- The Gnomish Sagan Tribe no longer uses light-green-colored gnomes.
- Added the Dreadskull and Wildfang tribes for the goblins.

* Heroes
- Added option to display a star symbol over a hero, to make the unit more easily distinguishable.

* Maps
- Improved symmetric map generation so that mercenary camps can no longer be generated extremely close together in a group of four at the center of the map.
- Improved resource generation for randomly-generated maps.
- Updated tree generation so that trees are less spread out in small chunks in randomly generated maps.

* Miscellaneous
- Renamed the "Campaign" screen to "Scenarios", to prevent confusion due to each "campaign" in the mode not containing a series of missions, but rather a single scenario on a huge map.

* Quests
- Added "The House of Seven Fathers" in-game quest for the Germanics.

* Scenarios
- The scenario screen now displays the highest completed difficulty for each scenario/campaign.
- Fixed issue which caused the Karling Buras to not be able to build if captured after the player developed the Teuton civilization.
- Fixed issue which caused the "Defeat your rivals" objective to be removed from a loaded game in the scenario/campaign mode.

* Triggers
- Updated the "Bountiful Harvest" scenario/campaign mode event so that the quantity of copper obtained scales with the quantity of farms owned.
- Added the "Expert Miner" random event for the scenario/campaign mode, which gives the (dwarven) player an expert miner for a price.
- Added the "Splendid Table" random event for the scenario/campaign mode.
- Added the "Beautiful Statuette" random event for the scenario/campaign mode.
- Added the "Brawl at the Barracks" random event for the scenario/campaign mode.
- Added the "Giant Mushroom Grown" random event for the scenario/campaign mode, for the dwarves.
- Added the "Skilled Carpenters" and "Skilled Masons" random events for the scenario/campaign mode.

* Units
- Fixed issue which caused a worker to stop its current actions if it previously had been ordered to build a structure, began building it, and then went on to do something else and another worker completed the construction.
- Units with only one experience unit type upgrade (i.e. Dwarven Miners) will now automatically choose that upgrade upon leveling up.

-----------------------------------------------------------------------
- 2.5.2
-----------------------------------------------------------------------

* Campaign
- Increased the quantity of yales in the Svarinshaug region of the Nidavellir campaign map.

* Maps
- Changed starting resources for randomly-generated maps.
- Wood/stone piles are now generated near each player's starting location in randomly-generated maps.

* Units
- When dwarven Miners, Skilled Miners and Expert Miners are selected at the same time, the build structure buttons now show up correctly.
- Fixed issue which prevented the Teuton Kogge from being available.

-----------------------------------------------------------------------
- 2.5.1
-----------------------------------------------------------------------

* AI
- Fixed bug which sometimes resulted in AI forces trying to go to the top-left corner of the screen.

* Buildings
- Dwarven buildings now use stone (instead of lumber) for construction, except for the Yale Pen, Dock and mines.
- Added Germanic Dock (graphics by Jinn).

* Campaigns
- Mineral resources for the Earth campaign map are now based on the real location of resources (except for those in the player starting points), instead of being randomly generated.
- Added "The First Dwarves" campaign.

* Factions
- Removed faction splitting, as the feature was not performing as expected.
- Updated the faction effects string to be more objective.

* Grand Strategy
- Removed province and tile name generation, greatly saving on memory usage.

* Maps
- Improved the symmetric map generation.

* Miscellaneous
- Fixed a crash related to worker gathering.

* Quests
- As missions are transitioning to the Campaign mode, acquiring technology points to unlock units, buildings and upgrades is no longer required for the missions.
- The storylines of the A Rocky Home and The Binding of Grafvitnir quests are now part of the The First Dwarves campaign, and thus those quest scenarios have been removed. The storyline has also been modified, so that the dwarves now have to slay the wyrm, rather than put fetters on it, and the kobolds who serve the wyrm now play a more prominent role.

* Units
- Dwarven Axefighters and Yale Riders no longer cost Lumber.
- Yales no longer attack if a unit gets close to them.
- Added Germanic Transport ship (graphics by Jinn).

* Upgrades
- The dwarven Masonry technology now costs only stone and no lumber.

-----------------------------------------------------------------------
- 2.5.0
-----------------------------------------------------------------------

* Abilities
- The learning buttons for Healing and Precision now correctly display descriptions for them.
- Yale Lords can now learn Leadership Aura.
- The Leadership Aura's effect is now only applied if units are in combat.

* AI
- Made the AI easier on Easy difficulty.

* Buildings
- Temples and docks now correctly have a rally point button.
- The goblin Dock now correctly the same quantity of under construction frames as those of the other civilizations (new frame by Jinn).
- Revamped Lumber Mill and Smithy names.
- Temples now sell scrolls.
- Temples now correctly receive the time efficiency bonus from Writing upgrades.
- Increased the sight of buildings which had a sight of 1 to 2.
- Added Germanic Dock graphics (at the moment used only for the Teuton pre-Masonry Dock).

* Factions
- Revamped Frankish personal names.
- Revamped Anglo-Saxon personal names.
- Revamped Lombardic personal names.
- Faction splitting now only happens in the campaign mode.
- Added several new Germanic tribes: the Eraling Tribe (+2 Damage for Eralas), the Karling Tribe (+1 Food per Farm), the Thielung Tribe (+1 Damage and +1 Accuracy for Eralas) and the Thrahiling Tribe (+5% Lumber Processing).

* Grand Strategy
- Fixed issue which sometimes caused a crash when loading a grand strategy game.

* Heroes
- Persistent heroes (including custom ones) can now be hired at barracks-type buildings and mercenary camps in single-player games (outside of quest scenarios and the grand strategy mode).
- Added Erala (Germanic Warrior) (icon by Exidelo).
- Added Sigibert (Frankish Ritter) (icon by Jinn).

* Items
- Fixed an issue which caused units without inventory to clear their order queue after picking up a healing item.
- Fixed an issue which caused healing item auto-use to clear the unit's order queue.
- Added two new unique spathas, Frey's Sword and Sigrljoma.
- Fixed issue which allowed units to pick up items laying on the ground even if the path to them was blocked.
- Added Fafnir's Heart unique item.

* Miscellaneous
- Fixed issue which caused Germanic players to have the Teuton Civilization upgrade researched at scenario start when restarting the scenario after having developed the Teuton civilization.
- New See Garrison button icon (by Jinn).
- Fixed issue which caused the autosave to remain active even after deactivating it in the options.
- Flavor triggers now only happen in the campaign mode.
- Changed the "Defeat your enemies" default objective description to "Defeat your rivals".
- The gold resource is now copper instead. Gold is now converted to copper at a 400% rate, while silver is converted to copper at a 200% rate.
- A popup is now displayed with the name of a resource when hovering over its icon.

* Quests
- Added a new Campaign mode, playable on a huge map.
- The player now receives a notification when new in-game quests are available, instead of a quest symbol hovering over the town hall.
- In-game quests are now only obtainable in the campaign mode.
- Added the "Master of Metal" in-game quest for the Germanics.

* Terrain
- Improvements to the rock, cave wall, dry mud and cave floor tile transitions (by Jinn).
- The forest tileset now again uses the previous dirt and rock tiles used for it (by Jinn).
- Improvements to the water tile transitions (by Jinn).
- Fixed crash which happened when attacking dungeon walls.

* Units
- Ships now receive individual names.
- Personal name epithets are no longer generated for fauna units.
- Added Goat (unit graphics by Jinn, based on b_o's yale; icon by Exidelo; sounds by Wildfire Games).
- Added Boar (unit graphics by Jinn, based on the boar model by Wildfire Games; icon by Exidelo; sounds by Wildfire Games).
- Added Wolf (unit graphics by Jinn, based on the wolf model by Wildfire Games; icon by Exidelo; sounds by the Battle for Wesnoth team).
- Removed fauna breeding to improve performance, and because it didn't serve enough of a purpose.
- Skutans and Schutzes now correctly have mana.
- Fixed issue which caused some Gnomish factions to not be able to train Recruits.
- Animal idle sounds are now played less frequently.
- The owner of goblin Thieves is now hidden (they appear as if they were neutral to other players).
- The popup which appears when hovering over a unit instead of displaying the personal name followed by the unit's type name, now displays the unit's type name (or its proper name in the case of unique/magic items or heroes) followed by the name of its owning faction.
- Names of heroes now have the proper color when hovering over their portrait in unit multi-selection or from within a transporter.
- Attacking is no longer the default action for when right-clicking non-aggressive fauna.
- Improved the performance of unit sight calculation when changing the time of day.
- Added level 2 infantry upgrades for the Germanic Warrior and the Teuton Krieger.
- The Teuton Krieger can now upgrade to the Ritter.
- Dwarven Miners can now upgrade to Skilled Miner and (at level 3) to Expert Miner (icons by Exidelo, based on Jinn's Dwarven Miner icon).
- Added icons for the Brising Skilled and Expert Miners for the Brising Faction Flair DLC.
- Update to the Horse graphics (modification by Jinn).
- Updated the Frankish Faction Flair DLC with new base swordsman icons.

-----------------------------------------------------------------------
- 2.4.2
-----------------------------------------------------------------------

* Buildings
- The garrison of stronghold-type buildings is now contained in a submenu accessible through the "See Garrison" button (icon graphics by Jinn).
- A quest symbol is now displayed on top of town hall-type and stronghold-type buildings if there are quests available (quest symbol by Exidelo).

* Editor
- The grand strategy battle AI is now available for selection in the editor.

* Grand Strategy
- Fixed issue which caused technologies to not be properly applied when playing grand strategy battles.
- Fixed issue which caused a crash when hovering the mouse over the edge of the map while playing with 1920 resolution width.

* Items
- Fixed an issue which caused an item to lose its name after loading a saved game.
- Added Horn item type (graphics by Exidelo). The horn can be equipped in the offhand slot, for any unit using a one-handed weapon (including ranged ones such as the dwarven Scout). As with rings and amulets, horns always have a magic affix.
- Added Gjall (unique horn).

* Miscellaneous
- Added Stone Pile (graphics by Jinn), which can be harvested for stone. It occasionally drops when buildings which cost stone are destroyed.
- Fixed a crash cause.
- Added "The Song of Rig" and "The Lay of Alvis" achievements.
- The Gold Rock graphics have been updated (by Jinn).
- Gold Rocks now have graphics for when holding less resources (by Jinn).

* Quests
- Added the possibility of accepting in-game quests at town-hall-type buildings in custom games (quest icon by Jinn).
- Added "The Good Seasons", "Thrahila's Logging", "Thrahila's Hut", "Karla's Farm", "Erala's Swordsmanship" and "Erala's Hall" in-game quests for the Germanics.
- Added "The Sun Shields" in-game quest for the Germanics, and removed the equivalent trigger.
- Added the "Mushroom Fields", "The Dripping Hall", "The Deep", "The Burner" and "The Weaver of Dreams" in-game quests for the dwarves.
- Added the "Shorbear Hold" in-game quest for the Shorbear Clan.
- Added the "Gathaarl's Children", "Agniss' Mysticism", "Dremac's Wealth", "Ioun's Tactics" and "Orza's Scholarship" in-game quests for the goblins.
- Fixed issue which caused the AI to randomly not behave properly in the "The Necklace of the Brisings" mission (dwarf).

* Units
- Decreased the rate at which workers gain experience by gathering and building.
- Renamed the goblin Worker to Drudge.
- Added Unicorn (icon by Mrmo Tarius, modified from Jinn's horse icon).

-----------------------------------------------------------------------
- 2.4.1
-----------------------------------------------------------------------

* Editor
- Fixed issue which sometimes caused a crash when placing certain types of terrain in the editor.
- Fixed issue with the "Trains" and "Drops" drop-downs in the unit properties of the editor occupying the same space.

* Factions
- Fixed issue which caused split-off factions to appear as neutral.

* Miscellaneous
- The default "Defeat your enemies" objective now displays in custom games on the upper-left part of the screen.

* Quests
- Fixed issue which prevented quest triggers from being properly activated when restarting a game.
- Fixed issue with the Closing the Gates quest which caused gryphons to be generated in it.

* Terrain
- Fixed issue which sometimes caused ferns and flowers to appear as black squares.

-----------------------------------------------------------------------
- 2.4.0
-----------------------------------------------------------------------

* Abilities
- Fixed close-quarters pathing issue for units' autocast for abilities like Stun.
- Added Precise Shot active learnable ability (deals an attack that has 100% chance of resulting in a critical hit).
- Added Scouting passive learnable ability (increases sight), available for ranged units. Dwarven Scouts, Pathfinders and Explorers start with this ability already learned (icon by Exidelo).
- Added Precision spell (causes status effect that doubles accuracy), learnable by dwarven Witnesses and Teuton Priests.

* Buildings
- Rally points are now correctly stored when saving a game.

* Civilizations
- The Goblins are now playable.
- Added Goblin UI (graphics by Jinn).

* Editor
- Fixed issue which caused certain custom units to be transformed into pre-existing ones when the map starts.
- Fixed issue which caused the interface for setting graphics for custom item types to not work.
- A unit type's drops may now be set through the editor.
- Fixed crash which happened when trying to place a custom unit based on the "unit-template-sapient-unit" template.
- Fixed issue which caused magic affixes set to items to not be saved if the item type didn't have any uniques.
- Fixed issue which caused a crash when viewing the properties of amulets and books.
- Which literary work a scroll or book contains can now be set in the editor.
- Terrain types are no longer limited to a tileset, and can now be placed on any map.

* Grand Strategy
- Fixed the position of the "No Day/Night Cycle" and "Battle Base Building" options in the Grand Strategy menu, so that they no longer occupy the same position.

* Heroes
- Goblin custom heroes can now be created.
- Fixed issue with heroes' stats increasing with every save/load while playing a scenario.
- Added a button on the right part of the screen to make it easier to select the custom hero.

* Items
- Fixed issue which caused a crash when a gryphon rider read a Scroll of Forgetfulness or a Book of Retraining.

* Maps
- Increased quantity of fauna units generated in maps.
- Fixed issue which caused a crash when approaching the long swordsman in random dungeons.

* Miscellaneous
- Updated the visual guide to include guidelines for ship graphics.
- Fixed minimap viewport rectangle issue which caused it to be 1 pixel smaller in both width and height than it should be.
- If there is a gold deposit in an unsettled area, a new tribe may split off from an existing one to occupy it.

* Quests
- Goblin Barbarians and Warlords are now present in the Caverns of Flame quest.
- Goblin custom heroes can now be used for dwarven quests.

* Terrain
- Added new dirt transitions (by Exidelo).
- Dirt tiles can now be built upon.

* Triggers
- Fixed issue which caused deactivated triggers to sometimes refire after loading a saved game.
- Added "The Curved Swords", "The Sun Chariot" and "The Sun Shields" flavor triggers for the Germanics in single-player custom games.

* Units
- Added Goblin Barbarian (upgrade of the Swordsman) (icon by Jesse Crider, modified from b_o's and Leo's Goblin Swordsman icon).
- Added Goblin Warlord (upgrade of the Barbarian) (icon by Jesse Crider).
- Added Goblin Shadowstalker (upgrade of the Headhunter) (icon by Jesse Crider, modified from Jinn's Goblin Headhunter icon).
- Ordinary enemy units now drop items in non-base-based missions (that is, ones in which no player owns or has ever owned a town hall).
- Fixed issue which caused unit individual upgrades to not be saved properly in saved games.
- Added Goblin Transport ship (graphics by Jinn).
- Goblin Gliders are now mechanical units.
- Dwarven Pathfinders can now upgrade to Gryphon Riders when leveling up.
- Fixed issue with destroyed doors not being passable after loading a saved game.
- Fauna units now prefer to move to terrain types that they are native to.
- Added Ettin (icon by Jinn, unit graphics by Jinn, modified from b_o's dwarven graphics) (currently only available through the map editor).
- Added graphics for young yales (modification of b_o's yale by Jinn).
- Goblin Thieves now correctly have 11 speed.
- Goblin Gliders can now patrol.

* Upgrades
- Added goblin Broad Sword and Long Sword upgrades (icons by Jinn).
- Added goblin Rimmed Shield and Embossed Shield upgrades (icons by Exidelo).

-----------------------------------------------------------------------
- 2.3.1
-----------------------------------------------------------------------

* Abilities
- Dwarven Witnesses can now learn Healing when leveling up.

* Buildings
- Fixed issue which caused buying potions from temples to be queued while a priest was being trained, instead of happening immediately.
- Added Goblin Dock (graphics by Jinn).
- Added Latin Stables (graphics by Wildfire Games and Jinn).

* Heroes
- Fixed issue which prevented a Schutze hero from being created.

* Items
- Added Book item (icon by Mrmo Tarius); literary works contained in books will increase their respective Knowledge sphere by 3 rather than 1.
- Added Book of Retraining, which allows a character to repick their abilities.
- Added the unique Thursagan's Book, which not only increases Knowledge (Magic) by 3, but also gives the character a permanent bonus to fire resistance.
- The literary works "De Bello Gallico", "Meditations", "Notitia Dignitatum" and "Historia Ecclesiastica Venerabilis Bedae" are now books instead of scrolls.

* Miscellaneous
- The entry for each world in the encyclopedia now displays a list of its sapient inhabitants and its fauna.
- The inhabitants of each plane now appear in a list in their encyclopedia entry.
- Updated the "Knowledge (Magic)" Game Concepts entry to say that literary works are usually dropped from town halls and temples.
- Fixed an issue which caused the key scroll speed preferences to not be loaded at game start.

* Quest
- The Mercenary Camp is no longer present in The Binding of Graftvitnir quest, as the player couldn't hire from it anyway (since farms can't be be built during the mission).
- The player now starts with a dwarven Witness who can heal in The Binding of Grafvitnir quest. On easy difficulty the player gets two healers instead.
- Fixed issue which prevented the Hills of the Shorbear Clan mission from being completed.

* Units
- Insects no longer show up in the minimap.
- Added Adelobasileus (prehistoric mammal-like animal) (icon by Mrmo Tarius, modified from Jinn's rat icon). This creature appears only in custom maps.
- Animals now seek shelter in stumps and holes at night (or day, if they are nocturnal).
- Animals are now more apt at finding a breeding mate.
- Increased the probability that birds and bats will have offspring.

-----------------------------------------------------------------------
- 2.3.0
-----------------------------------------------------------------------

* Abilities
- Aura abilities are now also applied to garrisoned units within range.

* Buildings
- Added Goblin Temple (graphics by Jinn).
- Added Latin Farm (graphics by Wildfire Games and Jinn).
- Added Latin Barracks (graphics by Wildfire Games and Jinn).
- Added Latin Smithy (graphics by Wildfire Games and Jinn).
- Changed the Germanic Carpenter's Shop hotkey to R.
- Fixed issue which caused buildings abandoned by workers to very slowly self-construct.

* Editor
- Fixed an issue which made certain unit layers not appear properly during unit placement.
- Units are now removed if the terrain below them is changed to become incompatible with them.

* Factions
- Added the "Derro Tribe" faction for the gnomes, along with an encyclopedia entry for them.
- Faction entries in the encyclopedia now display the faction's color and effects.

* Grand Strategy
- Fixed an issue which caused a town hall to not be generated for the defender with battle base building in certain random circumstances, which also had the consequence of making the battle unwinnable for the attacker.
- Added Ingria and Viborg provinces (Earth).
- Added Lake Ladoga water province (Earth).
- Added Untersberg province (Nidavellir).
- Years in Nidavellir are counted based on the foundation of Untersberg. Instead of "BC" and "AD", BU (Before Untersberg) and YU (Years Untersberg) are used when playing a Nidavellirian civilization.
- Added rivers to the grand strategy mode (graphics by Mrmo Tarius). Settlements placed on a river can fish for food.
- Added the Achelos, Alpheus, Avon, Danube, Dee, Douro, Elbe, Eurotas, Garonne, Minho, Narova, Neva, Oder, Peneus, Rhine, Sado, Seine, Severn, Tagus and Thames rivers to the Earth world map.

* Heroes
- Derro Thugs can now be created as custom heroes for (usable for Nidavellir quests).
- Heroes now have a "Knowledge (Magic)" stat (seen in the unit's popup when hovering over its portrait when it is selected), used for identifying magic items. For every five Knowledge (Magic) levels the unit also gains one maximum mana.
- Heroes now have a "Knowledge (Warfare)" stat (seen in the unit's popup when hovering over its portrait when it is selected). For every five Knowledge (Warfare) levels the unit gains one maximum HP.
- The effect of the "Suebi Allegiance" and other similar scroll effects is now described when hovering over the scroll in the inventory.
- The effect of the "Detachment" scroll effect is now described when hovering over the scroll in the inventory.

* Items
- Added "Scroll of Sagan Allegiance", which transforms a gnomish unit (including gnomish custom heroes) into their faction equivalent for the Sagan Tribe.
- Magic and unique items now start out unidentified. They are automatically identified when characters have a sufficient Knowledge (Magic) level.

* Literary Works
- The Alvissmol now increases Knowledge (Magic) by 1, instead of increasing mana.
- The Fafnismol now increases Knowledge (Warfare) by 1, instead of increasing the bonus vs. dragons.
- The Reginsmol now increases Knowledge (Warfare) by 1, instead of increasing the backstab bonus.
- The Scepter of Fire now increases Knowledge (Magic) by 1, instead of increasing fire resistance.
- The Hildebrandslied now increases Knowledge (Warfare) by 1, instead of increasing the bonus vs. mounted.
- The Meditations now increases Knowledge (Warfare) by 1, instead of increasing HP.
- Added "De Bello Gallico" (Latin), which increases Knowledge (Warfare) by 1.
- Added "Notitia Dignitatum" (Latin), which increases Knowledge (Warfare) by 1.
- Added 56 Teuton literary works which increase Knowledge (Magic) by 1.
- Added 3 goblin literary works which increase Knowledge (Magic) by 1.
- Added 2 gnomish literary works which increase Knowledge (Magic) by 1.
- Besides Town Halls and Strongholds, Temples can now also drop literary works.

* Miscellaneous
- Added "No Day/Night Cycle" option when starting single-player maps.
- Fixed a crash cause.
- Added support for the engine to recolor portraits and unit graphics to obtain new skin (such as the gray skin color for deep gnomes) and hair colors.
- Fixed a crash which happened when playing a custom map with the "Neutral" civilization being used for an AI player.
- Added a "Knowledge (Magic)" entry to the encyclopedia Game Concepts section, explaining how the new stat works.
- Added a "Knowledge (Warfare)" entry to the encyclopedia Game Concepts section, explaining how the new stat works.
- Added a "Planes" section in the encyclopedia, explaining some of the different planes of existence in the game's lore.
- Added a popup tip explaining item identification when an unidentified item is first obtained.
- Language patterns are now cached, so that the game no longer has to recalculate them on every launch.
- Added achievements to the game. The achievement screen can be accessed from the main menu.

* Multiplayer
- Fixed a multiplayer crash cause which triggered when both players had different "No Randomness" settings.

* Quests
- Added a new dialogue featuring Thjodrorir in the "A Rocky Home" quest (dwarf).
- In "The Treasures of Svarinshaug" quest (dwarf), the dwarves Brokk and Eitri now have to craft the artifacts for the priests of Hroptatyr, instead of for Modsognir.
- The game now saves in which difficulty you completed a quest. Quests completed before this version of the game are marked as having been completed under the Normal difficulty.
- "The Binding of Grafvitnir" quest (dwarf) now grants 3 Technology Points instead of 2.
- "The Battle of Magetobria" quest (Teuton) now grants 4 Technology Points instead of 3.

* Terrain
- Added new tree stump tiles (by Exidelo).

* Units
- Gnomes of the Sagan Tribe now have green skin (palette by Jinn).
- Greatly increased the quantity of hair color variations for gnomes.
- Added Derro worker (portrait by Jesse Crider).
- Goblin Swordsmen, Impalers, Archers and Headhunters now have 11 Speed instead of 10.
- Added Derro Thug (portrait by Jesse Crider, modified from Jinn's Gnomish Recruit portrait).
- Added Derro Executioner (upgrade of the Derro Thug) (portrait by Jesse Crider, modified from Exidelo's Gnomish Duelist portrait).
- Added Derro Shadowguard (upgrade of the Derro Executioner) (portrait by Jesse Crider, modified from Exidelo's Gnomish Master-at-Arms portrait).
- Added Goblin Shaman (unit graphics by b_o and icon by Jinn).
- Added Teuton Cleric (unit graphics by b_o and Jinn and icon by Jinn).
- As with Steelclads, dwarven Axefighters now also change the graphics of their weapons when the Great Axe upgrade is researched.
- Priest units can now be trained at temples, for the dwarves and the Teutons.

-----------------------------------------------------------------------
- 2.2.6
-----------------------------------------------------------------------

* Abilities
- Added the Leadership Aura ability (graphics by Jinn), learnable by dwarven Stonelords and gnomish Masters-of-Arms. Units affected by the aura deal +10% damage.

* Civilizations
- The gnomish patrol button has been improved (by Jinn).

* Factions
- Added "Acthna" polity for the gnomes.

* Grand Strategy
- Possible start dates extended to 162 AD for Earth.
- The Lauenburg province has been amalgamated into Holstein.
- Fixed issue which caused workers to be reset to 1 upon loading a save game.
- Fixed issue which caused Battle Base Building to only be active if, after checking the option, the game was closed and reopened.
- Split the Khersonska, Odeska and Vinnytska provinces off the Ukraine one.
- Added a number of Latin and Celtic cultural settlement names.
- Split Portugal into the Alentejo, Beira and Douro provinces.
- Trade settings are now correctly carried over when forming a new faction.
- Added Acthna province for Nidavellir.

* Items
- Added "Scroll of Acthnic Allegiance", which transforms a gnomish unit (including gnomish custom heroes) into their faction equivalent for the Acthnic Tribe.

* Literary Works
- Added the "Meditations" literary work, which grants +1 HP. It can be dropped from the Latin Forum.
- The Hildebrandslied now grants +1% bonus vs. mounted, instead of +1% critical strike chance.

* Miscellaneous
- Fixed issue which caused a crash when starting a multiplayer game.
- The Technologies section of the encyclopedia is now divided in subsections according to civilization.
- Added "Dutiful" trait (+3 HP, +2 Mana).

* Units
- Added Goblin Magnate (icon design by Jesse Crider and graphics by Jinn), which innately has the Leadership Aura.
- Added "the Clever" epithet for the Intelligent trait, and "the Blessed" for the Pious trait.
- Gnomes of the Acthnic Tribe and the Acthna factions now have gray skin (graphic changes by Jinn).

* Upgrades
- Added Coinage technology for the Goblins (icon design by Jesse Crider and graphics by Jinn).
- Fixed issue which prevented siege projectile upgrades from showing up properly in the tech tree.

-----------------------------------------------------------------------
- 2.2.5
-----------------------------------------------------------------------

* Editor
- Fauna units who don't have their own icons are now hidden in the editor.
- Units without proper unit graphics (i.e. Elven Swordsman) are now hidden in the editor.
- Fixed an issue with the transitions of water tiles of the forest tilesets when a tile of another type was placed over them in the editor.

-----------------------------------------------------------------------
- 2.2.4
-----------------------------------------------------------------------

* Buildings
- Building tooltips now show Food Supply.

* Factions
- Added Ubii Tribe (Teuton), which gets +5% Gold processing as its faction bonus (in the grand strategy mode they get a +5% precious metal production modifier).

* Grand Strategy
- Split the Devon and Somerset provinces off the Wessex one.
- Split the Gwynedd province off the Wales one.
- Split the Galloway and Strathclyde provinces off the Lowland Scotland one, and renamed the latter to Lothian.
- Split the Connaught, Munster and Ulster provinces off the Ireland one, and renamed the latter to Leinster.
- Split the Liege and Luxemburg provinces off the Belgium one.
- Split the North Brabant province off the Holland one.
- Greatly improved the setup of British and Irish tribes for the 9 BC start date.
- Added "Attacking", "Objectives" and "Units" entries to the Grand Strategy Concepts section in the encyclopedia.

* Heroes
- Fixed issue which caused the interface to break after advancing a Germanic hero to Teuton.

* Miscellaneous
- Improved the performance of the name generation pattern derivation when the game starts.
- Proper names are now more consistent when changing from a civilization/faction that has one language to another that has a different one. For example, the Germanic province name "Vestalanda" now becomes "Westlant" when changing civilization to Teuton and becoming the Suebi Tribe.

* Quests
- A raft no longer appears in the A Bargain is Struck quest (Dwarf) on hard difficulty or higher.
- The Gnomish Envoy now disappears when delivering the ruby in the A Bargain is Struck quest (Dwarf), as is more fitting with the dialogue.
- Added Goblin towers to defend the glyphs in the Closing the Gates quest (Dwarf) in the hard and brutal difficulties.

* Units
- Unit tooltips now show their Food Cost.

-----------------------------------------------------------------------
- 2.2.3
-----------------------------------------------------------------------

* AI
- Fixed an AI-related crash.

* Grand Strategy
- Split the Berry, Champagne, Lyonnais, Marche, Picardy, Poitou and Touraine provinces off the France one.
- Split the Dauphiny province off the Provence one.

* Units
- Fixed issue which allowed organic units with no proper name to have epithets.
- Added Goblin Patrol and Return Goods icons (graphics by Jinn).

-----------------------------------------------------------------------
- 2.2.2
-----------------------------------------------------------------------

* Grand Strategy
- Added Agder, Oppland and Rogaland provinces (Earth).
- Possible start dates extended to 9 BC for Earth.
- Fixed issue with grand strategy events which could cause the game to break when ending a turn.
- The province of Bohemia is now called "Marcomannia" if it has Teuton culture and is owned by the Marcomanni Tribe, or by another Suebic tribe.
- Building Roads now requires having researched Masonry, instead of being a polity faction.
- Technology research buttons now display more information about the technology's effect.

-----------------------------------------------------------------------
- 2.2.1
-----------------------------------------------------------------------

* Miscellaneous
- Fixed a crash which happened to some players when starting a game.

-----------------------------------------------------------------------
- 2.2.0
-----------------------------------------------------------------------

* Buildings
- Added Goblin Stronghold (graphics by Jinn, based on Exidelo's Goblin Town Hall).
- Added Goblin Watch Tower and Guard Tower (graphics by Jinn).

* Factions
- Added Aelak Tribe, Issudru Tribe, Mabom Tribe and Sigre Tribe for the Goblins.
- Added Myridia and Stilgar Goblin polities.
- Added Shellscale Tribe for the Kobolds.

* Grand Strategy
- Fixed issue which allowed 1-province polities to migrate.
- Fixed issue with loading grand strategy games.
- New tribes can now split off from your tribe (settling unoccupied nearby provinces) under certain circumstances.
- Factions now have capitals (identified by a crown symbol on the tile) (crown symbol graphics by Jinn).
- Heroes being in a province is now marked by a star symbol (graphics by Jinn).
- Roads can now be built (linking your faction's capital to tiles with roads is necessary to allow them to produce over 200 output of their resource; only polities can build roads) (road graphics by Mrmo Tarius).
- Building a dock in a province's settlement now connects its location to the faction capital as if there were a road to it.
- Add 1 lumber resource tile to Svarinshaug (Nidavellir).
- Added Thracian Sea water province (Earth).
- Added Akershus, Hedmark, Nordland, North Trondelag, Ostfold, South Trondelag and Vestfold provinces (Earth).
- Split the Varmland province out of the Sweden one.
- Added Myridia and Stilgar provinces (Nidavellir).

* Miscellaneous
- Fixed a save game compatibility issue.
- Fixed a save game loading issue.
- Split Game Concepts section in the Encyclopedia in two: Game Concepts and Grand Strategy Concepts.
- Added "Capital", "Roads" and "Transport Capacity" entries to the Grand Strategy Concepts.
- Added message when a full screen change fails, explaining why it happened.
- Added message when a resolution change fails, explaining why it happened.

* Terrain
- Trees, wood piles and logs now contain 400 lumber instead of 300.
- Rocks now contains 400 stone instead of 300.
- Tree stumps now contain 200 lumber instead of 150.

* Units
- Kobold Footpads can now be hired at the Mercenary Camp.
- Units can now have epithets (i.e. the Cruel) depending on their traits.
- Workers now gain experience by harvesting resources and building structures.

-----------------------------------------------------------------------
- 2.1.6
-----------------------------------------------------------------------

* Grand Strategy
- If tribal factions only have one province and attack an empty province, they now migrate to it instead of conquering it.
- Fixed issue which could cause a crash if the player pressed the End Turn button too fast, triggering two battles at the same time.
- Fixed issue which caused soldiers to not carry over from battles when playing with tactical battles active.

-----------------------------------------------------------------------
- 2.1.5
-----------------------------------------------------------------------

* Building
- Added Latin Forum (graphics by Wildfire Games and Jinn).

* Grand Strategy
- Besides rulers, polity factions can now also have treasurers and marshals.
- Rulers and ministers can now affect revolt risk.
- The ruler interface now shows the ruler's trait.
- Literary works without a specific author attached to them (i.e. the Alvissmol) will now have a suitable random character become the author, or an author will be generated.
- Randomly-generated literary works now also appear from time to time.
- Grand Strategy characters who don't have their own portrait can now be used in battle as well.
- Noble characters with German names now receive a place-name based family name.
- Heroes are now generated from time to time, depending on the proportion of provinces with barracks a faction has.
- Rulers and ministers can now influence troop cost.
- Settlements' names are now written on the map below them, along with the name of their province.
- Provinces can now have province modifiers (which appear to the left of the buildings in the province's main interface).
- Added Library (+1 Research), Courthouse (-1% Revolt Risk), College (+1 Research) and University (+2 Research) province modifiers, which are added to provinces via events.
- Provinces can now have governors (if their faction is a polity), providing bonuses to them.
- Split the Austria province into the new provinces of Carinthia, Lower Austria, Salzburg, Styria, Tyrol and Upper Austria.
- Added Asturias, Finland and Norrland provinces.
- Building and managing province settlement buildings now requires clicking on the settlement on the map.
- You can now choose where the province's settlement location will be when building a town hall in a previously empty province.

* Heroes
- Dwarven axefighter heroes now have different weapon unit graphics when holding a mace-class weapon.
- Dwarven axefighters and steelclads can now equip mace-class items.

* Interface
- Fixed the issue which caused the loading screen to not properly appear under SDL rendering.

* Terrain
- Fixed an issue with shared vision which caused cut tree and harvested rock tiles under shared vision to not be updated graphically.

* Units
- Added Dim (-5 mana), Genius (+10 mana), Intelligent (+5 mana), Pious (+5 mana) and Wise (+5 mana) traits.
- Added Yale Lord (experience upgrade of the dwarven Yale Rider) (icon by Jinn).

-----------------------------------------------------------------------
- 2.1.4
-----------------------------------------------------------------------

* Buildings
- Increased building lumber and stone costs to compensate for the increase in lumber and stone gathering rates.
- Temple regeneration aura range is now shown when a temple is selected.

* Editor
- Units can now be set to their unique versions in the editor.

* Factions
- Added Essex, Middle Anglia and Northumbria (Teuton polities, they use Old English as their language).

* Grand Strategy
- Added Lincoln province.
- Added the option of playing grand strategy battles with base-building available.

* Quests
- Fixed issue with the Hills of the Shorbear Clan quest which caused a crash when Rugnur stepped onto the glyph.

* Terrain
- Tree and rock tiles now contain 300 of their respective resource, instead of 100.

* Units
- The Teuton archer now has its own portrait (icon by Mrmo Tarius and Jinn) and is now named "Schutze".
- Added Dwarven Explorer, an experience upgrade of the Dwarven Pathfinder (icon by Jinn).
- Workers now gather lumber and stone at a speed more comparable to that at which they gather precious metals.
- Increased unit lumber and stone costs to compensate for the increase in lumber and stone gathering rates.
- Spearmen now have 75 mana.
- Added unique Dwarven transport ship, Skidbladnir (+1 speed, +1 evasion, +2 armor), for use in custom maps.

-----------------------------------------------------------------------
- 2.1.3
-----------------------------------------------------------------------

* Buildings
- Added Dwarven Temple (graphics by Jinn).
- Added Teuton Temple (graphics by Jinn).
- Temples regenerate the health of nearby organic units.
- Added graphics for pre-masonry Teuton Stables (by Exidelo, commissioned by Kyran Jackson for his third-party Wyrmsun spinoff under development, Timeless Tales).
- Fixed issue which caused towers to occasionally deal a very fast, constant stream of damage.

* Editor
- Building graphics can now be used for custom units/buildings in the editor.

* Factions
- Added the Bernice Tribe (Teuton, uses Old English as its language).
- Added the Dere Tribe (Teuton, uses Old English as its language).
- Expanded the encyclopedia entry of the dwarven Brising and Eikinskjaldi Clans.
- Added an encyclopedia entry for the dwarven Joruvellir and Lyr factions.
- Expanded the encyclopedia entry of the germanic Asa Tribe.
- Added Bernicia, Deira, East Anglia, Mercia and Wessex (Teuton polities, they use Old English as their language).

* Grand Strategy
- Split the England province into the Cornwall, Cumbria, Durham, East Anglia, Essex, Kent, Mercia, Northumberland, Sussex, Wales, Wessex and York ones.
- In the Grand Strategy mode, temples provide extra research.

* Items
- Potions of Healing are now bought in temples, rather than stronghold-class buildings.

* Maps
- Fixed a couple of tiles who were in the wrong place in the Shorbear Hills map.

* Miscellaneous
- The encyclopedia "Factions" section is now divided into subsections for different civilizations.

* Quests
- The Gnomish Envoy and Rugnur now disappear upon reaching their final objectives in the Hills of the Shorbear Clan quest.
- The Tomb of Durahn Eikinskjaldi quest (Dwarf) now grants two technology points instead of one.
- The Blue Danube quest (Teuton) now grants four technology points instead of three.

* Terrain
- New forest tileset rock graphics (by Exidelo).

* Units
- The Kriegers and Speerkampfers of the Bernice and Dere Tribes get a 50% damage bonus for a certain duration after disembarking from a transport ship.
- Transports and towers now have an attack button, used to instruct the units inside to attack a particular unit.

-----------------------------------------------------------------------
- 2.1.2
-----------------------------------------------------------------------

* DLCs
- Added command panel interface graphics in the Brising Faction Flair Pack (by Jinn).
- Added command panel interface graphics in the Frankish Faction Flair Pack (by Jinn).

* Grand Strategy
- At the start of the game, if a province has more workers than it can feed, that quantity will be automatically reduced to the maximum number of workers the province can feed.
- Fixed issue which caused factions to generate names for tiles even if their language was the same as their civilization's.
- Provinces owned by factions at game start now begin with at least four workers (if it can feed that many).
- Provinces owned by factions at game start now begin with at least two infantry units.

* Miscellaneous
- The time of day is now written in the interface (thanks to Marcelo Fernandez).
- Fixed issue with results screen.

* Units
- Units will now attack non-predator fauna units that are attacking one of your units (i.e. yales that attacked an unit of yours who got close to it).
- The popup which appears when hovering a single-selected unit now has information on its stats, and right-clicking the button now leads to its encyclopedia entry.

-----------------------------------------------------------------------
- 2.1.1
-----------------------------------------------------------------------

* Grand Strategy
- Literary works now have a random chance of being created in a province of the appropriate culture (if the province's owner has knowledge of writing). When a literary work is created in a province, it provides a small amount of prestige to the owner of the province.
- Fixed issue which caused Teuton grand strategy buildings to appear grayed even if already built.

-----------------------------------------------------------------------
- 2.1.0
-----------------------------------------------------------------------

* Civilizations
- All cursors are now preloaded, instead of only that of the player's civilization, to eliminate the cursor loading time mid-game when changing civilization.

* DLCs
- Added "The Death of Count Cadaloc" music theme to the Frankish Faction Flair Pack (by Marcelo Fernandez) (http://www.marcelofernandezmusic.com), for when playing Frankish factions (or playing Teuton factions who lack music of their own).
- With the Brising Faction Flair Pack, dwarven Axefighters and Steelclads now have a different shield for their unit graphics if the player is using the Brising Clan or a related faction, or if a Brising Round Shield is equipped (graphics by Jinn).
- Added graphics for when a Brising Round Shield is laying on the floor (by Jinn).
- Update to the Brising Round Shield icon (modification by Jinn).

* Items
- Fixed an issue which caused the game to crash when units who do not have any active abilities (like Skutans) had a spell scroll in their inventory, and the mouse hovered over the item.

* Map Editor
- Added support for saving maps as mods; this saves only the custom factions, custom words (for name generation), modified unit stats and unit sounds, allowing you to load the mod in the Mods screen.
- Added support for creating custom factions in the editor.
- Added support for creating custom unit types in the editor.

* Multiplayer
- Fixed a few potential crash causes for multiplayer.
- Fixed a potential desync cause related to variations.

* Quests
- Updated The Mead of Wisdom quest (dwarf) to give some information as to the fate of the sons and followers of Fjalar and Galar after the duo's death.

-----------------------------------------------------------------------
- 2.0.0
-----------------------------------------------------------------------

* Abilities
- Added "Puncture" learnable active ability (icon by Exidelo), available for units capable of making melee thrusting attacks.

* Buildings
- Improved Teuton smithy name generation.
- Added a Brising-specific version of the Dwarven Smithy (+50% Time Efficiency).
- Brising Smithies now have their own graphics (if the player has the Brising Faction Flair DLC).
- Brising Mead Halls and Bastions now have their own graphics (if the player has the Brising Faction Flair DLC).
- Added proper name generation for lumber mills.
- Dwarven Smithies now have proper names in the Dwarven language.

* Civilizations
- Added many new component words for Germanic settlement, province and smithy name generation.
- Names for smithies, provinces and settlements are now generated for Goblins.

* Factions
- Added support for factions using a different language than their civilizations (for name generation).
- The England and Scotland factions now use English for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- The Saxon Tribe and related factions now use Old Saxon for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- The Frisian Tribe and related factions now use Old Frisian for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- The Suebi, Marcomanni, Alamanni, Bavarian Tribes and their related factions now use Old High German for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- The Angle Tribe now uses Old English for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- The Frank Tribe and related factions now use Old Frankish for proper name generation (for units, settlements, provinces, mountains, hills, smithies and lumber mills).
- Renamed the Skjoldung Tribe (Germanic) to Skeldung Tribe.

* Grand Strategy
- Fixed issue which caused custom heroes to not be placed in the province properly after the "On the Vanaquisl" event mission.
- Fixed issue which caused the screen to be partially blackened after certain event missions.
- Fixed issue which allow players to save/load scenarios from within a grand strategy battle by using the save/load hotkeys.
- Fixed issue which required the attacked province to have a dock in order to conduct an attack overseas, rather than requiring the province from which the troops were being sent to have a dock.
- Fixed issue which caused workers to not generate labor after loading a saved game.
- Fixed issue which caused rebellions to happen with no rebel units present, when the population of the rebelling province was too low.
- Added new tooltip to explain how to move units and attack provinces.
- Fixed issue with terrain tile name generation which caused an occasional crash when starting a grand strategy game.
- Added new tooltip to explain how to attack over water.

* Heroes
- An error message is now given when an invalid custom hero name is entered (if it has an invalid character or contains only spaces).

* Items
- Scrolls can now drop from town hall and stronghold type buildings (scrolls always have a property associated with them).
- Added "Suebi Allegiance" spell for scrolls, which allows Teuton units to transform into their Suebi faction-specific equivalents (if any).
- Added "Detachment" spell for scrolls, which allows a faction-specific unit to transform into its civilization's equivalent unit.
- Added "Forgetfulness" spell for scrolls, which allows retraining a unit.
- Added "Frank Allegiance" spell for scrolls, which allows Teuton units to transform into their Frank faction-specific equivalents (if any).
- Rings and amulets now always have a property.
- Scrolls can be generated with literary works inscribed on them. Reading these will provide a very small (but persistent) bonus to your character.
- Added Fafnismol (literary work, scroll) (+1% damage bonus vs. dragons) (dropped by dwarven Mead Halls and Bastions).
- Added Reginsmol (literary work, scroll) (+1% backstab bonus) (dropped by dwarven Mead Halls and Bastions).
- Added Alvissmol (literary work, scroll) (+1 mana) (dropped by dwarven Mead Halls and Bastions).
- "Right-click to use" no longer appears in an item's popup if the item cannot be currently used (i.e. if the unit doesn't fulfill the conditions for a scroll to be used).
- Fixed issue which caused the stats change of one of the equipped rings to not be displayed properly when two rings are equipped.
- Added Hildebrandslied (literary work, scroll) (+1% critical strike chance) (dropped by teuton Rathauses and Burgs).
- Added Brising Round Shield.
- Added Frankish Spatha.
- The unique sword Gram is now a Frankish Spatha.

* Map Editor
- A tooltip now appears when hovering the mouse over a unit type's icon in the editor.
- Added support for defining map-specific words (for name generation).

* Miscellaneous
- Added support for damage bonus vs. dragons. This damage bonus affects wyrms, and will affect any other draconic creatures added later to the game.
- Fixed an issue which caused unit/building proper names to overlap with other parts of the interface if a word in them was too long.
- Fixed an issue which caused the player to be able to see others' buildings on the minimap if the player destroyed their own town hall.
- The Brising Clan (dwarf) now has a faction-specific icon for the dwarven level 1 shield (if the player has the Brising Faction Flair DLC).
- The Custom Game "Advanced Squads" option now includes two cavalry units in each squad.
- Fixed issue which sometimes caused the game to crash when exiting a scenario.

* Modding
- Added support for redefining civilizations and factions.

* Multiplayer
- Fixed a potential desync cause due to units' facing being randomly set when created through a random number generating function that isn't synchronized.

* Music
- Added 42 new music pieces by Marcelo Fernandez (http://www.marcelofernandezmusic.com).
- Wyrmsun now features adaptive music pieces, which change according to context (i.e. the music becomes more intense when a battle occurs) (by Marcelo Fernandez) (https://github.com/marcelofg55/oaml).

* Quests
- The Home of the Boii quest (Teuton) now grants 4 tech points instead of 3.
- The Treasures of Svarinshaug quest (Dwarf) now grants 3 tech points instead of 2.
- The Necklace of the Brisings quest (Dwarf) now grants 3 tech points instead of 2.
- Fixed issue which prevented the player from winning The Binding of Grafvitnir quest (Dwarf) if Grafvitnir was killed.

* Terrain
- Overhaul of the forest tilesets (by Exidelo).

* Units
- When right-clicking on a tile-based resource, workers who are already carrying the resource at maximum capacity will now return goods and then begin harvesting.
- When right-clicking on a unit-based resource, workers who are already carrying the resource at maximum capacity will now begin harvesting after returning goods.
- Frank Ritters now have their own portrait (if the player has the Frank Faction Flair DLC).
- Added Teuton Speerkampfer (icon by Jinn).
- Added a Frank-specific version of the Teuton Speerkampfer.
- Added a Frank-specific version of the Teuton Krieger.
- Added a Brising-specific version of the Dwarven Miner.
- Frank Speerkampfers have their own portrait (if the player has the Frank Faction Flair DLC).
- Frank Kriegers have their own portrait (if the player has the Frank Faction Flair DLC).
- Brising Miners have their own portrait (if the player has the Brising Faction Flair DLC).
- Workers will now look to see if any trees have regrown closer to their drop-off point when going to harvest lumber.
- Improved worker pathfinding checks when choosing which objects to harvest.
- Added Goblin Swordsman.
- Added Dwarven Guard (icon and shield by Jinn, spear-wielding arm animation by badbuckle).
- Cavalry units, siege weapons, transport ships and gryphon riders now require 2 food instead of 1.
- Cavalry units now have 9 evasion instead of 10.
- Workers can now use mines owned by allies.
- The Ritter graphics now have improved shading (modification by Jinn).
- New Teuton iron shield unit graphics (by Jinn).
- Brising Transports now have their own graphics (if the player has the Brising Faction Flair DLC).
- Added Goblin Headhunter (upgrade of the Goblin Archer) (icon by Jinn).

* Upgrades
- Update to the Spatha's icon (by Exidelo).
- Added Long Spear and Pike upgrades for spearmen (icons by Vladislav "iDreamRunner").

-----------------------------------------------------------------------
- 1.9.9
-----------------------------------------------------------------------

* Buildings
- Mercenary Camps now keep a "stock" of 6 Goblin Thieves, which is depleted when they are hired, and is replenished over time.
- Potions of Healing are now kept in stocks of 6 by stronghold-type buildings.
- Building unit stocks always begin at 0.

* Factions
- Renamed the Modsogning Clan (dwarf) to Brising Clan.

* Heroes
- It is now possible to create custom heroes with faction-specific versions of units (such as the Suebi Krieger).

* Items
- Cheese and carrots are now buyable at farms (each having a stock of 3).
- Fixed issue which caused the Potion of Decay to not work properly.
- Magic items now disappear after a long time if left in the ground (they take four times what it takes a normal item to disappear).
- Reduced the Kite Shield's armor bonus to +4 (from +5).

* Miscellaneous
- The correct background is now shown when a match ends in a draw.
- Update to the Germanic cursor (by Leo).
- Added a cursor for the Teutons (by Leo).
- When loading or saving a game or a map, files can now be sorted by date (thanks to marcelofg55).
- Added loading screen tip about time efficiency bonuses.
- Improved "Experience" popup tip to say that units receive +15 HP after leveling up if they have exhausted the level up upgrade possibilities, and added a new loading screen tip with the same information.

* Quests
- Fixed issue which caused The Tomb of Durahn Eikinskjaldi (Dwarf) quest to hang on loading.

* Technologies
- Writing technologies now provide a 10% boost to buildings' time efficiency, rather than research speed. Time efficiency bonuses affect not only the speed at which the building researches, but also the speed at which it trains and upgrades.

* Units
- Removed cap of Goblin Thieves a player can have at a single time, as its purpose has been replaced by its hiring cooldown.
- Added Gnomish Master at Arms, an experience upgrade of the Gnomish Duelist (icon by Leo, based on Jinn's Gnomish Recruit icon).
- Decreased Gnomish Duelist HP from 65 to 60.
- Siege engines are now more cautious about attacking a target if that will hurt a friendly unit.
- Fixed crash which could happen if a unit was already dead when the raft under it was destroyed.
- Added portrait for the Suebi Krieger (by Leo).
- Dwarven Yale Riders now cost a bit of lumber, and their gold cost has been slightly decreased.
- Decreased starting damage for siege engines by 5.
- Added brown and blond hair variations for Teuton Kriegers.
- Gnomish Recruits are now cheaper, grant less experience when killed, need less experience to level up, and have a bonus to accuracy and evasion of +1 instead of +2.

-----------------------------------------------------------------------
- 1.9.8
-----------------------------------------------------------------------

* AI
- The AI now has to explore the map.
- The AI now only harvests trees if no wood piles, tree stumps or logs are present nearby.

* Buildings
- Town hall class buildings now have 6 sight.
- Stronghold class buildings now have 9 sight.
- Mercenary Camps are now never generated closer than 16 tiles to a player's starting location (previously that value was 8).

* Maps
- Added No Man's Land map (custom), from the Stratagus Media Project.

* Miscellaneous
- Full screen can now be toggled from within a scenario (thanks to marcelofg55).
- Fixed multiplayer loading screen crash.
- Fixed a crash cause which could happen while selecting a faction.

* Units
- Added Gnomish Duelist, an experience upgrade of the Gnomish Recruit (icon by Leo, based on Jinn's Gnomish Recruit icon).
- Improved XP required calculation.
- Decreased the quantity of experience that the dwarven Gryphon Rider requires to level up and that it gives when killed.
- If a unit has spent all of its level up points, the interface now automatically exits the level up choice submenu.

-----------------------------------------------------------------------
- 1.9.7
-----------------------------------------------------------------------

* Buildings
- Germanic and Teuton smithies now have proper names generated for them.

* Items
- Added "Frail" magic prefix for armor items and buildings.
- Added "Vulnerable" magic prefix for armor items and buildings.
- Added "of Frailty" magic suffix for armor items, rings, amulets and buildings.
- Added "of Vulnerability" magic suffix for armor items, rings, amulets and buildings.

* Miscellaneous
- The loading screen now has a background.
- Loading screen tips and backgrounds now appear when loading a grand strategy map as well.
- Fixed sluggish sound issue which happened on some systems (thanks to marcelofg55).
- Fixed crash which could happen when the player was allied to an AI.

* Quests
- Instead of the Chieftain's Hall stats having lower armor for the On the Vanaquisl mission (germanic), the Vana Chieftain's Hall now has the "Frail" and "of Vulnerability" affixes on Easy and Normal difficulties.
- Fixed the AI ally in the Battle of Magetobria quest (teuton), so that it is passive (doesn't train troops and attack the enemy), as it should.

* Units
- The icon of the Gnomish Recruit now has a gray-haired variation (thanks to Leo).

-----------------------------------------------------------------------
- 1.9.6
-----------------------------------------------------------------------

* AI
- AI units now pick up healing items to heal themselves.
- Improved the efficiency of AI troop regrouping.
- Fixed issue which caused AI workers to not repair buildings suffering from burning damage, because they thought they were still under attack (and thus that it would be dangerous to repair them).
- The AI now makes use of gryphon riders in its attacks.

* Buildings
- Bastions and Burgs now increase the range of ranged units garrisoned within by 1, as guard towers do.

* Factions
- Fixed issue which made the faction bonuses of the new player be applied to rescued units.

* Map Editor
- Made it possible to set affixes for any building in the editor.

* Miscellaneous
- Fixed crash which happened when a missile with splash damage hit a unit during its death animation.
- Fixed an issue which caused dropped units to sometimes be generated with an incorrect magic affix.
- Fixed crash which happened when loading a game if the game had been saved while a unit which has a character assigned to it was dying.
- Enhanced the support for position-based hotkeys to allow players to have position-based hotkeys only for training/building/etc.
- Tips are now displayed when loading a scenario (thanks to marcelofg55).
- Added several new tips.
- Fixed issue which caused the incorrect UI to be loaded after loading a save game.
- Fixed issue which caused the incorrect music to sometimes be loaded.

* Quests
- Fixed issue which caused the initial dialogue of The Mead of Poetry quest (dwarf) to play again after loading a saved game of that mission.

-----------------------------------------------------------------------
- 1.9.5
-----------------------------------------------------------------------

* Heroes
- Fixed an issue with custom hero experience carry over.

* Miscellaneous
- Improved backwards compatibility with old save games.

-----------------------------------------------------------------------
- 1.9.4
-----------------------------------------------------------------------

* Abilities
- Update to the Mace Mastery icon.

* AI
- Increased the reaction range of AI units.
- Improved AI response to attacks.

* Grand Strategy
- Grand strategy saves are now stored in the /wyr/save/grand_strategy/ folder, instead of directly in the /wyr/ one.

* Heroes
- Persistent heroes now carry over experience (previously only their level was saved). Please note that experience is saved as the percentage of experience in relation to the experience required for the next level-up.
- Fixed a crash when loading a game which happened if a persistent hero was selected when the game was saved.

* Items
- Equipment tooltips now show the change in stats, rather than the item's absolute bonuses to stats.

* Map Editor
- It is now possible to to set magic prefixes and suffixes to mines.
- Revamped the player properties editing menu.
- It is now possible to set a player's faction when editing player properties.

* Miscellaneous
- Fixed display issue with the results screen if a scenario had 8 players.
- Fixed Linux-specific bug with persistency which prevented heroes and grand strategy saves from being loaded properly (thanks to zenorogue for the help in debugging it).

* Units
- Dwarven Scouts now have +1 Sight (losing their previous +1 Speed bonus).
- Added Dwarven Pathfinder (experience upgrade of the Scout) (icon by Jinn).

-----------------------------------------------------------------------
- 1.9.3
-----------------------------------------------------------------------

* Abilities
- The Stun ability can now be autocast (active by default).

* AI
- The AI now gets shooter defenders in its stronghold-class buildings (previously this happened only to guard towers).
- AI workers now stop gathering resources to repair (previously they didn't go repair a structure if they were currently harvesting a resource).
- Improved resource-gathering AI to make the AI workers harvest object resources that are nearby first before harvesting farther away tile resources.

* Factions
- The faction choice menu now tells the player which color each faction has.
- An unused color will now be chosen for a player if their faction's color is already used.

* Heroes
- Fixed crash which happened when the "Persistent Heroes" popup tip triggered by selecting a custom hero.

* Map Editor
- It is now possible to set magic prefixes and suffixes for the appropriate units in the map editor.

* Miscellaneous
- Loading screen improvements (thanks to marcelofg55).

* Units
- Added 26 personal names for horses based on horses from Norse mythology and Bohemian legends.

-----------------------------------------------------------------------
- 1.9.2
-----------------------------------------------------------------------

* Buildings
- Gold, Silver and Copper Deposits and Mines can now have magic prefixes and suffixes, and can be unique as well (starting gold mines aren't generated with affixes).
- Added The Wedding Veil (unique gold deposit/mine).
- The "Sturdy" and "Impregnable" magic prefixes are now available for deposits/mines.
- Added "Replenishing" magic prefix for deposits/mines (+1 Resource Replenishment).
- Added "of Replenishment" magic suffix for deposits/mines (+1 Resource Replenishment).
- Added "Dwindling" magic prefix for deposits/mines (-1 Resource Replenishment).
- Added "of Diligence" magic suffix for deposits/mines (+10% Time Efficiency Bonus).
- Added Shorbear Hold (unique dwarven Bastion).
- Unique buildings provide a greatly increased chance of magic or unique items dropping.
- Added "Industrious" magic prefix for deposits/mines (+10% Time Efficiency Bonus).
- Added Smitna (unique silver deposit/mine).
- Added Esel (unique silver deposit/mine).

* Maps
- The Wedding Veil (unique gold deposit/mine) is now always present in the Prague map (including when the map is used for The Home of the Boii quest).

* Miscellaneous
- Moved "Build Structure" button to the bottom row.
- Fixed an issue which caused a button's popup to continue being drawn after the button "level" had changed (i.e. if a submenu had been selected like the "Build Structure" one).
- A player's units will now be revealed 30 seconds after the loss of the last town hall.
- Fixed a Linux-specific freeze issue (thanks to marcelofg55).
- Slightly changed the color unique item names have.
- Encyclopedia categories are now in alphabetical order.
- Added an encyclopedia category for runic suffixes.

* Quests
- In the Hills of the Shorbear Clan quest (dwarf), the starting Shorbear Bastion is now the unique Shorbear Hold.

* Units
- Organic units no longer drop items unless they have a character assigned to them.
- The name of units who have characters assigned to them now appears in orange (as with unique items).
- The probability of a magic or unique item dropping from a unit is now linked to the unit's level (rather than only whether it is assigned to a character or not, as was previously).

-----------------------------------------------------------------------
- 1.9.1
-----------------------------------------------------------------------

* Miscellaneous
- Fixed issue which caused the C key to center on the selected unit, rather than Ctrl+C or Alt+C, as intended.
- To prevent conflicts with command button hotkeys, the hotkey for selecting the entire army is now Alt+Q, rather than Q.
- To prevent conflicts with command button hotkeys, the hotkey for selecting all visible units of the same type as the currently selected one is now Alt+W, rather than W.

* Units
- Fixed issue which caused rescued units to get all upgrades applied to them, regardless of whether their new owner had them researched or not.

-----------------------------------------------------------------------
- 1.9.0
-----------------------------------------------------------------------

* Abilities
- Added Mace Mastery passive ability (learnable by Dwarven Stonelords) (icon by Vladislav "iDreamRunner" and Jinn).
- Added Spear Mastery passive ability (learnable by Goblin Spearmen) (icon by Vladislav "iDreamRunner" and Jinn).
- Added Stun active ability (learnable by Dwarven Stonelords and Yale Riders, Germanic Eralas, Teuton Kriegers and Ritters, and Gnomish Recruits) (icon by Vladislav "iDreamRunner").

* AI
- Updated the AI to make use of ships.

* Buildings
- The Dwarven and Teuton Dock buildings are now buildable in RTS mode.
- Dwarven buildings now have 20% fire resistance, to represent their heavier use of stone and lesser use of wood in construction (making their structures less flamable).

* Items
- Added "of Slaughter" magic suffix for weapons (+3 damage).
- The unique broad sword Laevatein now has +7 damage as its effect.
- Items are no longer destroyed by splash damage when laying on the ground.

* Map Editor
- Fixed an issue which caused no cursor to appear if editing a map in which the first player belong to certain NPC civilizations.

* Miscellaneous
- Fixed issue which caused part of the game screen to be black after playing the Tomb of Durahn Eikinskjaldi quest.
- Added drop-down graphics for the Dwarves and Germanics (by Jinn).
- New spear icon (by Vladislav "iDreamRunner").
- Toned down the scrolling speed when CTRL is held.
- Added option to have position-based hotkeys (i.e. the first command button has the "Q" hotkey, the second "W", and so forth).

* Quests
- The Battle of Magetobria quest (Teuton) now gives 3 technology points instead of 2.
- The Razing of Opitergium quest (Teuton) now gives 3 technology points instead of 2.
- The A Rocky Home quest (Dwarf) now gives 2 technology points instead of 1.
- The Treasures of Svarinshaug quest (Dwarf) now gives 2 technology points instead of 1.

* Units
- Added the Transport ship for the Dwarves (graphics by Jinn).
- Added the Kogge (transport ship) for the Teutons (graphics by Jinn).
- Added a new popup tip saying that units can earn experience (triggered when an organic unit is first clicked).
- Added a new popup tip describing persistent heroes (triggered when a persistent hero is first clicked).
- Improved the Food popup tip.
- Added a new popup tip for potions of healing.

-----------------------------------------------------------------------
- 1.8.6
-----------------------------------------------------------------------

* Maps
- Added gold rocks to the Scandinavia map.
- Added gold rocks to the Southern Tunnels map.
- Removed the Central Great Britain, France, Iberia, North America, North Italy, Southern Central Europe, Southern Great Britain and South Italy maps.

* Units
- Gnomish Recruits who are persistent heroes can now equip mace-class items (such as hammers and mining picks).
- Gnomish Recruits now display a hammer in their graphics if a hammer is equipped.
- Gnomish Recruits now display a mining pick in their graphics if a mining pick is equipped.

-----------------------------------------------------------------------
- 1.8.5
-----------------------------------------------------------------------

* Miscellaneous
- Fixed a crash cause.
- Added flaming throwing axe graphics (by Vladislav "iDreamRunner").

* Units
- Eralas now use the iron long sword graphics if they have a Spatha equipped.

-----------------------------------------------------------------------
- 1.8.4
-----------------------------------------------------------------------

* Items
- Weapons that have no effect now show "+0 Damage" in their tooltip.
- Shields that have no effect now show "+0 Armor" in their tooltip.
- Boots that have no effect now show "+0 Speed" in their tooltip.
- New graphics for boots when they are laying on the floor (by Vladislav "iDreamRunner").

* Miscellaneous
- Fixed the color of the gold processing bonus text in the interface.

* Quests
- Increased starting goblin defense forces in the Gathering Materials quest to prevent the player easily rushing them.
- Added melee troops to the starting Shorbear defense forces in the Hills of the Shorbear Clan quest to prevent the player from being able to destroy the Shorbear Hold with a single ballista.
- The Caverns of Flame quest (dwarf) now grants 2 technology points instead of 1.
- The Razing of Opitergium quest (teuton) now grants 3 technology points instead of 2.
- Fixed a crash cause in the Hills of the Shorbear Clan quest.

* Units
- Added a new sound for when a siege engine fires (by Wildfire Games).
- The graphics for the missile of the Teuton Catapult and the Goblin War Machine now change depending on whether they cause fire damage or not (non-flaming catapult rock missile graphics by Vladislav "iDreamRunner").
- Germanic Skutans, Goblin Archers and Dwarven Ballistas now use flaming missile graphics if they cause fire damage (graphics modification by Vladislav "iDreamRunner").

* Upgrades
- Added Alchemy upgrade for the Dwarves and the Teutons (ranged and siege units deal fire damage, requires Writing) (icon by Vladislav "iDreamRunner").
- Updated Throwing Axe and Arrow upgrade tooltips to represent that they increase damage by 2 rather than 1.

-----------------------------------------------------------------------
- 1.8.3
-----------------------------------------------------------------------

* AI
- Improved resource-gathering AI.
- Fixed some AI issues for certain quests.

* Quests
- Fixed issue which caused silver and copper to sometimes be generated instead of gold for the Gathering Materials quest.
- Fixed issue which gave a small random chance for the Shinsplitter gold mine to not be created in the proper position in the Hills of the Shorbear Clan quest.

-----------------------------------------------------------------------
- 1.8.2
-----------------------------------------------------------------------

* Buildings
- Town Hall-type and Stronghold-type buildings can now drop hammers, mining picks, boots, rings and amulets.

* Items
- Units who have inventories now auto-use healing items if they are too low on health.
- Cheese and carrots now heal 5 HP instead of 3.
- Added three new runic magic suffixes, "of Aedi", "of Ergi", "of Othola" and "of Thurs".
- Cheese and carrots can now be carried (icon graphics by Vladislav "iDreamRunner").
- Added equippable amulet items (graphics by Vladislav "iDreamRunner").
- Added "of Strength" suffix for amulets and rings.
- Added Brisingamen (unique amulet).

* Miscellaneous
- Fixed an issue which caused persistent heroes' items to be duplicated when loading a saved game.

* Units
- Added a new icon for chests (icon graphics by Vladislav "iDreamRunner").

* Upgrades
- The Dvalic Runewriting's description now correctly shows its effects in the tech tree screen.

-----------------------------------------------------------------------
- 1.8.1
-----------------------------------------------------------------------

* Items
- Fixed issue which prevented units without inventories from picking up power-ups.
- Fixed issue which prevented the damage bonus of "of Perfuration" weapons from appearing in the tooltip if the base weapon had +0 damage.
- Added the "of Os" magic suffix (+1 Thorns damage), named after the Anglo-Saxon rune Os. This suffix is dropped only by Teuton smithies.

* Miscellaneous
- When units are attacked, now their personal names appears in the notification alongside their unit type's name (previously only the unit type's name appeared).
- Fixed a save game loading issue.
- Fixed an issue which caused custom heroes to duplicate in certain circumstances when loading a saved game.

* Quests
- There is now text in the quests screen indicating how many quests of the total have been completed for that world.
- Fixed an issue with the Closing the Gates quest (Dwarf) which caused its initial dialogue to re-run after loading a saved game of that scenario.

* Units
- Fixed issue which caused units to try to walk up to enemies even though there was a door between them.
- Fixed issue which caused the NPC unit Long Swordsman to not have its graphics show up properly.

-----------------------------------------------------------------------
- 1.8.0
-----------------------------------------------------------------------

* Buildings
- Guard Towers now provide +1 range for the ranged units attacking from within them.
- Buildings no longer provide experience when destroyed.
- Buildings now always drop items when destroyed.
- There is now a chance that a horse or a yale will appear when a Stables or Yale Pen building is destroyed, respectively.

* Grand Strategy
- Decreased the probability of revolts while increasing the amount of rebel troops per revolt, to make revolts more significant and less of a nuisance.

* Heroes
- Custom heroes can now be created in the quest interface, and if one is selected the hero will appear alongside your starting units in quest scenarios. Custom heroes are also available in the grand strategy mode or (single-player) custom games if an appropriate civilization is selected.
- Gnomish custom heroes can be created for play with the dwarves.

* Items
- Persistent heroes, Stonelords and Gryphon Riders now have an inventory in which they can carry items (such as potions). Other units can still use potions by right-clicking on them, but they can't carry them around. Items are saved for persistent heroes.
- Added weapon and shield items. These can be equipped by right-clicking, and will replace the bonuses of the weapon/shield technologies with those of the item.
- Added equippable boot items.
- Added equippable rings items (ring icon graphics by Vladislav "iDreamRunner"); each hero can equip two of them.
- AI units now have a chance to drop items.
- Dropped items now have a chance of having a magic prefix or suffix, as well as a chance of being a unique item (the probability of getting a magic or unique item from a building is doubled).
- Added Brimir (unique broad sword).
- Added Laevatein (unique broad sword).
- Added Gram (unique spatha).
- Added Hrotti (unique spatha).
- Added Rithil (unique spatha).
- Added Toporik (unique bearded throwing axe).
- Added Svalin (unique bronze shield).
- Added Andvaranaut (unique ring).
- Added Draupnir (unique ring).
- The encyclopedia now has information on items, item affixes and unique items.

* Miscellaneous
- Units' names now appear in a tooltip when they are hovered.

* Units
- Improved the calculation of the XP required for level up.
- Improved the XP bar display.
- Germanic Skutans and Goblin Archers no longer use different animations for melee and ranged attacks.
- Blood Bats and Dread Bats now give more experience.
- Dread Bats now deal less damage.
- Blood Bats and Dread Bats now eat Snigills.

-----------------------------------------------------------------------
- 1.7.5
-----------------------------------------------------------------------

* Heroes
- The heroes' icons in the encyclopedia now show up with their faction's player color (rather than their civilization's default player color, as was the case previously).
- The heroes' factions are now displayed in their encyclopedia entries.

* Map Editor
- Fixed crash which occurred when right-clicking a unit to edit its properties.

* Quests
- Fixed issue which caused the triggers of the Mead of Wisdom quest (dwarf) to not occur properly.

-----------------------------------------------------------------------
- 1.7.4
-----------------------------------------------------------------------

* Maps
- Fixed an issue which caused the Scandinavia and Svafnir's Lair maps to crash.

-----------------------------------------------------------------------
- 1.7.3
-----------------------------------------------------------------------

* Buildings
- Added Dwarven Dock (graphics by Jinn) (requires a Lumber Mill) (for now only available in the Grand Strategy mode and through the editor).
- Added Teuton Dock (graphics by Jinn) (requires a Lumber Mill) (for now only available in the Grand Strategy mode and through the editor).

* Grand Strategy
- Building a Dock is now necessary for fishing and for attacking provinces through water.

* Quests
- Fixed issue with quest icon player color.

-----------------------------------------------------------------------
- 1.7.2
-----------------------------------------------------------------------

* Buildings
- Fixed issue which sometimes caused the Teuton town hall to briefly flicker before changing graphics after the research of Masonry.

* Grand Strategy
- Added three new dwarven characters who may potentially become rulers: Oin, Andvari and Regin.
- Added Hordaland province in Norway.
- Improved the performance of the grand strategy hero code.
- Added Orkney province off the coast of Scotland.

* Heroes
- Thoroughly reworked the hero code. Heroes are now saved in the "heroes.lua" file instead of "preferences.lua".

* Maps
- Fixed issue with random map generation which caused bridges to sometimes not fully appear.

* Quests
- Fixed issue which caused nothing to be clickable in-game after the initial quest dialogue, if the player had played a grand strategy game just before.

* Units
- Added two new name prefixes and one new name suffix for yales.
- Units can now have gray hair without having the old trait (like certain dwarven heroes do).
- An icon will now show up in the upper-right corner of the screen if you have units with level up upgrades available.

-----------------------------------------------------------------------
- 1.7.1
-----------------------------------------------------------------------

* Grand Strategy
- Added Bornholm province.
- Added the Burgundian succession line of Gundahar (the historical Burgundian king who became Gunnar in the Norse myths and Günter in the Nibelungenlied).
- Fixed issue which caused all resources of a particular type in a province to appear worked if a single resource of that type was worked.
- Fixed issue with playing the Asa Tribe in the random world map.
- Added tooltip to the "World" drop-down for the grand strategy game setup.

* Quest
- Fixed crash which happened in certain quests.

* Units
- The Germanic Skutan is now drawn in layers.
- Improvement to the Suebi Krieger's east/west walk animations.
- Fixed issue which caused Marbod's name to appear blank.
- The unit training timer will now reset to 0 if the player lacks food to train the unit (previously the timer went to completion but the unit wouldn't actually be trained until the player had the necessary food).

-----------------------------------------------------------------------
- 1.7.0
-----------------------------------------------------------------------

* Grand Strategy
- Dwarves now start with plow in the first start date.
- Dwarven provinces now start with 4 workers.
- Fixed issue with "The Necklace of the Brisings" mission event which caused the enemy to be able to build, and to start with goblin infantry instead of dwarves.
- Fixed tactical battle crash.
- Factions can now have rulers, who affect administrative efficiency (and thus resource/research production). To view your faction's ruler and the related bonus, click the main hall (or stronghold), and then the "Show Ruler" button. When rulers die, they are succeeded by a child of theirs (if the faction is a tribe or if it is a monarchical polity), or (in the case of republics or tribal/monarchical factions with no heirs) by a chosen character living in the faction's borders.
- Added a succession of mythical Germanic rulers, from the earliest start date to the settlement of Scandinavia.
- Set Modsognir as the Modsogning Clan's ruler in the earliest Nidavellir start date.
- Set Durstorn as the Norlund Clan's ruler in 1 BC.
- Set Marbod as the Marcomanni Tribe's ruler in 9 BC.
- Added two new events for the Asa Tribe about Tror.
- Fixed bug which caused the "Quit To Menu" button to be available despite being disabled by pressing its hotkey.
- Set Ariovistus as the Suebi Tribe's ruler in 71 BC.
- Set Glonoin as the Shorbear Clan's ruler in 1 BC.

-----------------------------------------------------------------------
- 1.6.2
-----------------------------------------------------------------------

* Quests
- Fixed bug with the "Westward Migration" quest.

-----------------------------------------------------------------------
- 1.6.1
-----------------------------------------------------------------------

* Grand Strategy
- Fixed crash which happened if the player attacked an empty province with the automatic battles option disabled.

* Units
- Germanic (and Teuton) Skutans, Dwarven Scouts, Dwarven Gryphon Riders and Goblin Archers now have 1 more damage.

* Upgrades
- Arrow and throwing axe upgrades now increase damage by 2 instead of 1.

-----------------------------------------------------------------------
- 1.6.0
-----------------------------------------------------------------------

* Buildings
- Reduced the cost of the copper and silver mines.

* Factions
- Added a new Germanic faction, the Volsung Tribe.
- Factions can now be chosen in-game.
- Factions can now have unit types of their own which replace or supplement their civilization's unit types.
- Factions can now have a parent faction (from which they inherit units).
- Set the Suebi Tribe as the parent faction of the Buri Tribe, Marcomanni Tribe, Quadi Tribe, Semnone Tribe and Galicia.
- Factions now have faction-specific bonuses.
- Added a new Dwarven faction, Joruvellir (polity).
- Added the Bavarian Tribe to the encyclopedia faction entries.

* Grand Strategy
- Fixed issue which caused labor to not be allocated after loading a saved game.

* Units
- Added a faction-specific version of the Krieger for the Suebi Tribe.
- Added graphics for a Suebi shield, used by their Krieger after Iron Shield has been researched (graphics by Jinn).

-----------------------------------------------------------------------
- 1.5.2
-----------------------------------------------------------------------

* Factions
- Added two new Germanic factions, the Skjoldung Tribe and the Yngling Tribe.

* Grand Strategy
- Added a new event, "Skjold's Domain", in which the southern lands of the Asa Tribe are given to the Skjoldung Tribe.
- Added the Iceland province to the Earth map.

* Map Editor
- The editor now gives an error message when trying to save a map without any person player.

* Miscellaneous
- Fixed bug which caused a crash when changing the resolution from within a scenario, if the game had to draw a health bar.
- Maps with no person players are no longer selectable in the map dropdown.

-----------------------------------------------------------------------
- 1.5.1
-----------------------------------------------------------------------

* Buildings
- Updated dwarven Sentry Tower and Guard Tower icons.

* Grand Strategy
- Fixed grand strategy random map generation to produce silver and copper resources.

* Miscellaneous
- Maps are now saved directly as SMP and SMS files, instead of being saved within a compressed GZ file.
- Fixed a bug which caused a health bar to be shown for decoration units.

* Multiplayer
- Fix to IP address validation code (to prevent the game from repeatedly trying to connect to an invalid IP address).
- The IP address to which the player is trying to connect is now shown while in the "Connecting..." panel.

-----------------------------------------------------------------------
- 1.5.0
-----------------------------------------------------------------------

* Buildings
- Added silver deposit, mine and rocks (graphics by Jinn). Silver is converted at a 50% rate to gold when processed.
- Added copper deposit, mine and rocks (graphics by Jinn). Copper is converted at a 25% rate to gold when processed.

* Grand Strategy
- Made clearer what the numbers in the town hall interface represent.
- Worked resource tiles now show how much they produce when being hovered over.
- Fixed issue which caused the "OK" button to not appear in the Stables/Yale Pen interface.
- Fixed issue with the "Northwards to the Sea" event which prevented it from triggering.
- Added silver and copper resources to the grand strategy map.

* Map Editor
- Fixed issue which caused metal rocks placed with the editor to have 50000 of their resource stored by default, instead of 1000 as they should have.

* Miscellaneous
- Fixed an issue which caused a savegame crash.

-----------------------------------------------------------------------
- 1.4.1
-----------------------------------------------------------------------

* Grand Strategy
- Tip added explaining the relationship between workers and food storage.
- Fix to menu button pause issue.

-----------------------------------------------------------------------
- 1.4.0
-----------------------------------------------------------------------

* Abilities
- Added the learnable ability Deadly Precision (icon by Jinn), which increases critical strike chance by 10%.
- Decreased Critical Strike's bonus to 10%.
- Added the learnable ability Eagle Eye (icon by Jinn), which increases accuracy by 2.

* Buildings
- The Teuton Farm now changes its graphics after Masonry is researched (new graphics by Jinn).
- Reworking of the shadows of the Gnomish and Goblin buildings (by Jinn).
- Reworking of the shadows of the Mercenary Camp (by Jinn).
- The Teuton Smithy now changes its graphics after Masonry is researched (new graphics by Jinn).
- Town hall type buildings now grant 5 food instead of 1.
- Added Teuton Stables and Dwarven Yale Pen (graphics by Jinn).
- Buildings now lose 1 HP per second when burning intensely (below 50% health).

* Grand Strategy
- The minimap no longer stops functioning if toggling full screen while playing a grand strategy game.
- Building lumber mills in a province now increases that province's lumber demand.
- The administrative efficiency of a province can now be seen in the town hall's interface (administrative efficiency affects production and research; it is by default 100%, but there is a 25% penalty to it if the province is of a different culture than its owner).
- Added the possibility of provinces revolting if they are not of the same culture as their owner, or if they have been conquered recently.
- AI factions now attack through water, if there is only one water province separating them from an enemy province.
- Hill graphic transitions update (by Jinn).
- Greatly increased the proportions of the Earth map.
- New Earth provinces: Abruzzo, Aetolia, Alsace, Apulia, Augsburg, Baden, Bessarabia, Boeotia, Bosnia, Bremen, Brunswick, Bukowina, Calabria, Campania, Carniola, Corinth, Courland, Crimea, Dalmatia, Dobruja, Drenthe, East Friesland, Epirus, Estonia, Euboea, Farther Pomerania, Franche Comte, Franconia, Friesland, Hanover, Hesse, Highland Scotland, Hither Pomerania, Holstein, Istria, Latvia, Lauenburg, Liguria, Lithuania, Lombardy, Lorraine, Lower Lusatia, Lower Rhine, Lowland Scotland, Magdeburg, Malta, Mecklenburg, Modena, Montenegro, Moravia, Moselle, Neumark, Normandy, Oldenburg, Overijssel, Palatinate, Palermo, Pannonia, Parma, Piedmont, Pomerelia, Provence, Rhodes, Rhodope, Savoy, Scania, Schleswig, Skopje, Slovakia, Syracuse, Thessaly, Thuringia, Tuscany, Umbria, Upper Lusatia, Upper Saxony, Venetia, Vojvodina, West Galicia, Wurtemberg, Zealand.
- New Earth water provinces: Bristol Channel, Celtic Sea, Gulf of Bothnia, Gulf of Finland, Gulf of Riga, Inner Seas, Kattegat, Lake Vättern, Lake Wener, Sea of Azov, Sea of Marmara, Skagerrak.
- Players can now choose any year between 3000 BC and 71 BC as the starting date for Earth.
- Players can now choose any year between 3000 BC and 550 AD as the starting date for Nidavellir.
- Burgs and Bastions now provide two guard towers in defensive battles.
- Tile tooltips are now drawn as popups in the bottom-left corner of the map, instead of being drawn below the minimap.
- Interface tooltips are now drawn as popups.
- Provinces now show a (cosmetic) population number.
- Added a gold deposit in the Lyr province.
- Stone and lumber are now harvested from a tile only if a quarry or timber lodge is present there (resource building tile graphics by Jinn).
- New food resources: grain (produced by grain farms), mushrooms (produced by mushroom farms) and fish (produced by settlements adjacent to water); contrary to other resources, food is stored by the province, not by the faction (resource building tile graphics by Jinn).
- Provinces now have worker units, who contribute to the province's labor pool (used for producing resources) and consume food (except for workers who are employed in food-producing occupations, who don't contribute to food consumption).
- When a province accumulates 10,000 food, its population will grow, with the creation of a new worker.
- Training military units now requires a worker (you cannot however take the last worker unit away from a province).
- The Wood Plow and Iron-Tipped Wood Plow technologies are now researchable in grand strategy mode (each provides +100% to food production).
- The Bountiful Harvest event now grants additional food in every province, rather than giving extra gold to the player.
- Added an enormous number of new factions to populate historical Europe.
- Grand strategy gold mine graphics have been reworked, and now have player color (by Jinn).
- New ocean tile variations (by Jinn).
- The Asa migration event chain (if followed to the end) now results in a unified Asa Tribe holding the whole conquered territory.
- Teuton settlements now have a different appearance if masonry is researched (graphics by Jinn).

* Maps
- Improvements to the generation of the Belfort, Braga, Malmo, Novgorod, Oderzo, Regensburg, Salzburg and Tanais maps.
- Changed the river layout of the Regensburg map.

* Miscellaneous
- A idle worker button now appears in the upper right corner of the screen if there are any idle workers.
- Fixed a few minor issues with button clicking.
- Encyclopedia, tech tree and quest tooltips are now drawn as popups.
- Added new Gnashorn and Yale backgrounds (used for Wyrmsun with permission).
- In the video options screen, the resolution is now changed only after pressing "OK", instead of immediately when using the drop-downs.

* Modding
- Added the possibility of making units have a damage bonus against buildings, against giants (with a corresponding "Giant" tag to be used by units) or against air units.
- Added resistances against hack, pierce and blunt damage.
- Added new types of damage with their respective resistances: fire, cold, arcane, lightning, air, earth and water.
- The Steam version of Wyrmsun will now also identify mods in the /mods/ folder, instead of only ones available through the Steam Workshop.

* Quests
- The Home of the Boii and Moving into Galicia quests (Teuton) now give 3 technology points instead of 2.
- The Necklace of the Brisings and The Binding of Grafvitnir quests (Dwarf) now give 2 technology points instead of 1.
- The Hills of the Shorbear Clan quest (Dwarf) now gives 3 technology points instead of 2.
- The allied tribes in The Home of the Boii quest now have one Ritter each in place of a Krieger they previously had.
- Fixed an issue which caused the tech tree menu not to be brought up when finishing a quest after loading a game.

* Units
- A unit type's bonus against mounted units, bonus against buildings, bonus against giants, bonus against air and backstab bonus now appear in its popup.
- The Dwarven Yale Rider is now trainable, if the player has a Yale Pen and a Smithy.
- Added Horse (unit graphics by b_o and icon by Jinn).
- Fixed the display of the mercenary hiring popup.
- Dwarven Gryphon Riders are now trainable (they require a Lumber Mill and a Bastion to be trained).
- Germanic and Teuton archers now have a 50% damage bonus against air units.
- Added Teuton Ritter (icon by Jinn and unit graphics by badbuckle).

-----------------------------------------------------------------------
- 1.3.3
-----------------------------------------------------------------------

* Buildings
- Right-clicking on an enemy with a tower while a ranged unit is inside will now cause the unit to try to attack that particular enemy.

* Grand Strategy
- Rework of dark plains, plains and hills tile graphics (by Jinn).
- Added two new provinces to the Nidavellir world map: Aurvang and Joruvellir.
- Added new water province to the Nidavellir world map: Deep Sea.
- New hill graphic transitions (by Jinn).
- Added option for automatic battles.

* Miscellaneous
- New stone icon (by Jinn).

* Quests
- Fixed crash in the Gathering Materials quest.

* Units
- Fixed issue which caused the player's food consumption to be updated incorrectly when a unit is rescued.
- Neutral units now display health bars when damaged.

-----------------------------------------------------------------------
- 1.3.2
-----------------------------------------------------------------------

* AI
- Fixed issue which caused AI units to retaliate against volcanic craters.
- Fixed bug with AI active unit count.

* Factions
- Tribe and clan factions now become polity factions after a writing technology is researched.

* Grand Strategy Mode
- Improved the efficiency of minimap drawing.
- There is now a gray-colored rectangle on the minimap indicating which part of the map the player is currently seeing.
- Improved turn processing performance.
- Improved AI troop movement decisions.
- Fixed issue with grand strategy under Linux which could cause a freeze.
- Added events to transform tribal factions into polity ones if writing has been researched.
- The "Teuton Culture Develops", "Goth Culture Develops" and "Norse Culture Develops" events now trigger immediately if a Germanic faction has one province of the respective culture.

* Items
- Potions of Healing can now be bought at the dwarven Bastion and the teuton Burg (healing potion icon by Jinn).

* Miscellaneous
- Ctrl+F and Alt+F now work anywhere to toggle fullscreen, rather than only when playing a scenario.
- Added new Gryphon background (used for Wyrmsun with permission).
- Fixed crash which sometimes happened when changing the resolution from the main menu after playing a grand strategy game.
- Fixed tech tree menu music reset issue.
- Fixed issue with autosaved games duplicating starting units when loaded.
- Fixed issue with loading a game from a quest resulting in return to the quest menu.
- Tip, dialogue, grand strategy event, and grand strategy prospection popups can now be closed by pressing "enter".

* Quests
- The Blue Danube quest now grants 3 technology points instead of 2.
- Added the Binding of Grafvitnir (dwarf) quest.

* Units
- Previously-obtained upgrades now apply to rescued units.
- Chain mail left arm graphics update (by b_o).

* Upgrades
- Added Writing upgrade for the Teutons and Dvalic Runewriting for the Dwarves (increases research speed; in grand strategy mode increases research output) (icon by Jinn).
- Fixed issue which was causing the tech level and max tech level settings to not be set for all players.

-----------------------------------------------------------------------
- 1.3.1
-----------------------------------------------------------------------

* Civilization
- Improvements to dwarven and teuton name generation.

* Grand Strategy
- Improvements to grand strategy scrolling when reaching the eastmost and southmost portions of the map.
- Added "No Randomness" option to the grand strategy mode.
- Dwarves now generate names for mountains.
- Increased the loading speed of random forest, swamp and cave maps in grand strategy mode.
- Fixed which base tile is selected when loading a saved game.
- The player can no longer train military units in the Treasures of Svarinshaug quest in grand strategy mode.
- The player can no longer train units or build structures in the Necklace of the Brisings quest in grand strategy mode.
- Fixed issue with certain Germanic missions in grand strategy mode.

* Map Editor
- It is now possible to change the HP of an individual unit, in its properties.
- Fixed bug with the map editor's civilization setting.

* Maps
- Improved water and rock generation for the Prague map.
- Added a few rafts to the Prague map.

* Miscellaneous
- Fixed a few cosmetic issues with resolution changing and full screen setting in the video options screens.
- Added new Wyrm background (used for Wyrmsun with permission).

* Quests
- The Boii Tribe now starts with a few more defensive units in the Home of the Boii quest.
- The player can now "rescue" troops from allied Germanic tribes in the Home of the Boii quest.

-----------------------------------------------------------------------
- 1.3.0
-----------------------------------------------------------------------

* Grand Strategy
- Dwarves now generate names for hills in provinces of their culture.
- Germanics now generate names for hills and mountains in provinces of their culture.
- Teutons now generate names for hills and mountains in provinces of their culture.
- Settlements now have a 10% chance to be named after named terrain features on their tile.
- Provinces now have a 10% chance to be named after their settlement.
- Dwarven personal name generation improvements.

* Maps
- Renamed Aurvangar to Aurvang.

* Miscellaneous
- Fixed Linux start crash.

-----------------------------------------------------------------------
- 1.2.9
-----------------------------------------------------------------------

* Grand Strategy
- Fixed issue with a defeat happening if Durin and Modsognir weren't in Svarinshaug when the A Rocky Home and The Necklace of the Brisings missions happened.
- Improved mercenary hiring tooltip.
- Improved Grand Strategy mode performance.
- Teutons now generate a new province name when assimilating a province if none is preset for that province.
- Added mouse scrolling to the grand strategy mode.
- The Germanic and Gnome civilizations now display different settlement graphics depending on whether a barracks is built or not.
- Dwarves now generate a new province name for a province of their culture, if no dwarven cultural name is preset for that province.
- Germanics now generate a new province name for a province of their culture, if no germanic cultural name is preset for that province.
- Germanics now generate a new settlement name for a province of their culture, if no germanic cultural settlement name is preset for that province.

* Miscellaneous
- Fixed save game crash.
- Added autosave option (active by default), which autosaves the game every five minutes.
- Split the options screen into "Gameplay Options" and "Video and Audio Options" subscreens.

* Units
- Fixed costs of the Surghan Mercenary (it was costing some lumber, while it should cost none).
- Added extra safety check against crashes when a shooter fires at a unit just about to enter a container.

-----------------------------------------------------------------------
- 1.2.8
-----------------------------------------------------------------------

* Buildings
- Dwarven towers now have more HP.
- Goblin farms are now 20% cheaper and faster to build but have 50% lower HP.

* Grand Strategy
- Added tooltip for how much a unit's upkeep is when recruiting one.
- Improved Grand Strategy mode optimization.
- Greeks, Latins and Teutons now generate a new cultural settlement name when assimilating a province if none is preset for that province.

* Maps
- Added two rafts to the "Time for Decisions" map, to allow reaching two gold deposits near a coast in a more practical way.
- Added four rafts to the "Looking Upwards" map.
- Improvements to the Cavern of Flames map.

* Quests
- Added defensive troops for the goblins in the Caverns of Flame quest.
- Increased goblin and Shinsplitter troops in the Caverns of Flame quest in Hard and Brutal difficulties.

* Terrain
- Volcanic craters now spit flaming rocks and miasma (except in The Wyrm quest).

* Units
- Workers now gather gold at a slower pace.
- Improved missile origin pixel centralization for multi-tile units.

* Upgrades
- New graphics for the Dwarven and Teuton Coinage upgrades (by Jinn).

-----------------------------------------------------------------------
- 1.2.7
-----------------------------------------------------------------------

* Multiplayer
- Multiplayer serialization fixes.
- Fixed issue with rally point use for multiplayer.

-----------------------------------------------------------------------
- 1.2.6
-----------------------------------------------------------------------

* Multiplayer
- Fixed chat message crash issue.
- Fixed player color for chat messages.
- Fixed issue with civilization selection for multiplayer.

* Units
- Increased selection box size for the raft.
- Units now have a selection box as large as the raft's if riding on it, and if the raft's selection box is larger than the unit's.

-----------------------------------------------------------------------
- 1.2.5
-----------------------------------------------------------------------

* Editor
- Fixed hotkey issue with the unit type properties menu.
- Improvements to the organization of the editor UI elements.
- It is now possible to use 5x5 and 10x10 tile brushes.

* Grand Strategy
- Added tooltip for tactical unit multiplier.
- Fixed two interface-related crash causes.

* Miscellaneous
- Fixed save game crash related to whether a unit's AI is active.
- Slight improvement to unit selection.

* Multiplayer
- Added "Computer Opponents" option, which replaces empty player spots with computer players.
- Fixed a couple of desync causes.

* Quests
- Minor text update to the dwarven quests.

-----------------------------------------------------------------------
- 1.2.4
-----------------------------------------------------------------------

* AI
- The AI build order and attack patterns have been revamped.
- Fixed crash related to AI Goblin Glider movement.

* Buildings
- Fixed issue which caused gold mines to be unbuildable over gold deposits which had a decoration unit (like mushrooms) under them.

* Editor
- It is now possible to set a unit's personal name through the map editor.
- It is now possible to set an organic unit's trait through the map editor.
- Setting a unit's AI to passive in the map editor now works properly.
- The editor now never has a time of day graphics change applied to it.

* Items
- The message when consuming an item now says which unit consumed it.
- The message when stepping on trap now says which unit stepped on it.
- A message is now given when a unit consumes a potion of slow.
- Food items now play an "eat" sound when consumed.

* Maps
- Improved map generation algorithm so that players aren't generated too close to one another on random maps.
- Fixed rare issue which could cause a player's starting location to be enclosed by rocks in random maps.

* Miscellaneous
- Fixed crash related to workers trying to return goods to a non-existent building.
- Right-clicking on chairs, beds and tables now attacks them.
- Dungeon walls no longer are attacked when right-clicking on them.
- Some barrels (approximately 10%) are now explosive, and cause damage upon destruction to nearby units.
- The explosion following the destruction of an alchemy bench now causes damage to nearby units.
- The alchemy bench is now attacked when right-clicking on it.
- Pathfinder improvements.
- Fixed issue with workers not properly repairing and harvesting when using rally points.
- The game now no longer pauses if Alt+Tabbing from it.

* Quests
- The armor of the Chieftain's Hall is now zero in the On the Vanaquisl mission, to avoid too much waiting being necessary for destroying the Vana Tribe's hall.
- The On the Vanaquisl quest now yields 2 technology points instead of 1.
- The Sack of Iuvavum quest now yields 2 technology points instead of 1.
- Added The Treasures of Svarinshaug (dwarf) quest.
- Changed the Gathering Materials quest objective text from "Mine 10000 gold and 20000 coal" to "Collect 10000 gold and 20000 coal".
- The Romans can no longer upgrade their town hall in the Sack of Iuvavum quest.
- In the Sack of Iuvavum quest, the Romans now start with a mix of swordsmen and archers as their defense, rather than solely archers.
- Added The Necklace of the Brisings (dwarf) quest.

* Terrain
- Fixed issue which caused minimap representation of removed tree or rock tiles to be affected by the time of the day when they were removed.
- Fixed issue with roaming fog movement.

* Units
- Fixed issue which caused ranged units to display their melee animation if attacking a flying unit that was close to them.
- Fixed issue which caused ranged units to use the raft to move to close range, instead of moving only the amount necessary to be able to attack their targets.
- The Teuton Krieger and Marbod now display different graphics depending on which weapon and shield technologies are researched.
- The Dwarven Thane has been renamed to Stonelord.
- Fixed issue which allowed ranged units to shoot through doors in dungeon maps.
- The slimes, blood bats and dread bats have been strengthened.

* Upgrades
- Added Wood Plow and Iron-Tipped Wood Plow upgrades (both increase farm food supply) for the Dwarves, the Germanic/Teutons and the Goblins (graphics by Jinn).
- Developing the Teuton civilization now requires having researched Wood Plow.

-----------------------------------------------------------------------
- 1.2.3
-----------------------------------------------------------------------

* Editor
- It is now possible to alter unit stats with the map editor (those modifications are valid only for that map).
- It is now possible to alter unit sounds with the map editor (those modifications are valid only for that map).

* Miscellaneous
- The "X" marker which appears after clicking now appears over the fog of war as well.
- Maps with only one player are no longer available for the multiplayer map selection.

* Units
- Dwarven Axefighters are now slightly cheaper to train.
- Germanic Eralas, Teuton Kriegers and Goblin Spearmen are now slightly faster to train.
- Improvements to the heading calculation of units when attacking, building and repairing.
- Added a raft, which units can use to travel through bodies of water.

-----------------------------------------------------------------------
- 1.2.2
-----------------------------------------------------------------------

* Buildings
- A building's quantity of garrison spaces now appear in that building's popup description.
- The location of queued buildings is now marked when pressing Shift, even if pathlines are disabled.
- Added rally point command button for buildings which can train or garrison units (button graphics by Jinn).
- A building's rally point now appears even if pathlines are disabled, when pressing Shift or setting a new rally point.

* Miscellaneous
- Changed "Disable Pathlines" option to "Show Pathlines".
- Ctrl + click when moving now makes the selected unit(s) stand ground after moving.
- Fixed an issue which could cause a crash in multiplayer, or send an erroneous "out of sync" message.

* Quests
- The Romans now start with more troops in the Sack of Iuvavum quest, to prevent early attacks from easily defeating them.

* Upgrades
- Changed location of the Coinage research button.

-----------------------------------------------------------------------
- 1.2.1
-----------------------------------------------------------------------

* AI
- The AI on "easy" difficulty now takes more time to go through its orders.
- Computer opponents are now hostile to each other by default.

* Grand Strategy
- Fixed issue which caused units to disappear if the province they were in happened to be assimilated to the faction's culture, and that culture used the same unit type for that class as the faction's culture.

* Miscellaneous
- Improved rectangle drawing under OpenGL.

* Quests
- Reduced quantity of axefighters Durin starts out with in the Mead of Wisdom quest in the hard and brutal difficulties.

* Units
- Added voices in Proto-Germanic for the Germanic units (by Manuel Senfft).

* Upgrades
- Added background description to the Teuton Coinage.

-----------------------------------------------------------------------
- 1.2.0
-----------------------------------------------------------------------

* AI
- The AI algorithm for shuffling workers between the harvesting of different resources is now more efficient.

* Miscellaneous
- Pressing 'Q' will now select the player's entire army.
- Pressing 'W' will now select all visible units of the same type as the first of the currently selected ones, while pressing 'W' twice will select all units of that type.
- The screen is now properly centered in the player's starting position after loading a saved game.

* Quests
- The AI in the "Northwards to the Sea" quest is now defensive.
- Improved the ending of the "On the Vanaquisl" quest.

* Terrain
- Further fix to the very rare issue with map generation which led to gold rocks appearing on top of trees and other unsuitable terrain.

* Units
- Fixed issue with workers trying to harvest a mine which was still under construction.

-----------------------------------------------------------------------
- 1.1.9
-----------------------------------------------------------------------

* Buildings
- Germanic and Teuton building shadows reworked (by Jinn).

* Maps
- Added new landbridge to the Regensburg map.
- Fixed water/land transition issues in some of the Nidavellir cave maps.

* Miscellaneous
- OpenGL is now active by default.
- When increasing and decreasing game speed with the "-" and "+" buttons, the game now says exactly to what speed it was increased/decreased to.
- The game speed number which appears on the interface now has "Speed:" written before it.
- Removed in-game option to remove the fog of war.
- Added in-game option to reverse the direction of mouse wheel scrolling.
- Fixed issue which caused strange shapes to appear behind the minimap if OpenGL were active.

* Quests
- In many of the Germanic and Teuton quests, the player now starts with two farms already built.

* Terrain
- Added day/night cycles.
- Fixed very rare issue with map generation which led to gold rocks appearing on top of trees and other unsuitable terrain.

* Units
- Human units now have a sight bonus at day, and a sight malus at night.
- Goblin and kobold units now have a sight malus at day, and a sight bonus at night.
- Bats now have a sight malus at day, and a sight bonus at night.
- Units now use their sight range as their reaction range.
- Animals now have increased hunger after breeding.

-----------------------------------------------------------------------
- 1.1.8
-----------------------------------------------------------------------

* Maps
- Added six Custom maps from the Stratagus Media Project: Central Park, Little Island, Looking Upwards, Northern Lakes, North-South Conflict and Time for Decisions.

* Miscellaneous
- The multiplayer map selection screen now uses dropdowns similar to the map selection in the Single Player custom game screen.

* Quests
- Slight change to the dialogue in the Hills of the Shorbear Clan quest.

-----------------------------------------------------------------------
- 1.1.7
-----------------------------------------------------------------------

* Buildings
- Dwarven building shadows reworked (by Jinn).

* Maps
- Random maps now correctly have no computer-controlled players in multiplayer.

* Miscellaneous
- Choosing "Low", "Medium" or "High" resources now correctly makes the player start with stone.
- Fixed issue with civilizations in multiplayer not reflecting player setup choices.
- Fixed crash related to fauna trying to eat something which had already been "removed" from the game.
- Miscellaneous engine improvements.
- Improvements to music playing code.
- Added four difficulty settings for custom games and quests: Easy, Normal, Hard and Brutal.

-----------------------------------------------------------------------
- 1.1.6
-----------------------------------------------------------------------

* Buildings
- Added tips for the Chieftain's Hall, War Lodge, Carpenter's Shop, Smithy, Watch Tower, Guard Tower, Mead Hall, War Hall, Lumber Mill and Sentry Tower.

* Grand Strategy
- Researching Coinage now correctly gives a 10% Gold bonus in Grand Strategy mode.
- Added tips for the province, town hall, barracks, lumber mill, smithy, mercenary camp and diplomacy interfaces.
- Added tip for gold discovery.

* Items
- Added tip for food items.

* Miscellaneous
- Improvements to unit selection.
* Miscellaneous engine improvements.

* Quests
- Added tip to the A Bargain is Struck scenario.

* Upgrades
- Slight update to the Dwarven Coinage icon.

-----------------------------------------------------------------------
- 1.1.5
-----------------------------------------------------------------------

* Grand Strategy
- Added a "Load Game" button to the Grand Strategy setup screen.
- Added the "A Rocky Home" quest as a Grand Strategy event.

* Miscellaneous
- Changed the optional player-colored rectangle into a player-colored (filled) semi-transparent circle.
- The optional player-colored circles no longer appear under dead units.
- A slight fix to building selection by rectangle.

* Upgrades
- The effects of upgrades now appear in their popups.

-----------------------------------------------------------------------
- 1.1.4
-----------------------------------------------------------------------

* Miscellaneous
- Fixed crash which could happen with full screen mode.

-----------------------------------------------------------------------
- 1.1.3
-----------------------------------------------------------------------

* Units
- Fixed issue which caused the Skutan to display his attack animation wrongly when attacking dungeon walls.
- Workers now attack fauna and obstacles as their default right-click action when clicking on them.
- Units now display the red hair cursor when the mouse is hovered over a fauna unit.

* Upgrades
- Fixed bug when researching Iron Shield, Bodkin Arrow, Granite Catapult Projectile, Metal Catapult Projectile or Coinage in Grand Strategy mode.

-----------------------------------------------------------------------
- 1.1.2
-----------------------------------------------------------------------

* Heroes
- Added hero Modsognir (dwarf).

* Miscellaneous
- Fixed issue with AI worker code (thanks to Szunti).
- The mouse scroll arrow no longer appears if the edge of the map has been reached.
- The default action when right clicking on fauna with units is now to attack.
- Added an option to display a player color rectangle below units and buildings.
- Fixed issue which caused the Germanic cursor to appear in the Dwarven tech tree screen if the Germanic tech tree screen had been selected previously.
- Fixed issue which prevented tooltips to be displayed in the menus or in grand strategy mode if OpenGL were activated.

* Quests
- Added A Rocky Home quest (dwarf).
- The Razing of Opitergium quest now provides 2 technology points instead of 1.

* Upgrades
- Added Coinage upgrade for the Dwarves and the Teutons.

-----------------------------------------------------------------------
- 1.1.1
-----------------------------------------------------------------------

* Buildings
- Training orders now behave properly when given to multiple selected buildings.
- Fixed issue which prevented building from being multi-selected via SHIFT-clicking.

* Civilizations
- The Germanics and Teutons now have voices.

* Miscellaneous
- Fixed unit selection rectangle in OpenGL (it was off by one pixel).
- Fixed a bug with unit type BuildingRules, and another regarding variables, both of which could lead to a crash.

* Quests
- Fixed icon player color and hair variation of many units in the dialogues of the dwarven quests, and in the Home of the Boii Teuton quest.
- Added a new dialogue to the Northwards to the Sea mission.

* Units
- Workers now properly play their sounds when they've completed building a structure.

-----------------------------------------------------------------------
- 1.1.0
-----------------------------------------------------------------------

* Miscellaneous
- Fixed crash related to resource-harvesting.
- Unit variations are now properly saved in a saved game.

* Multiplayer
- Solved a bug with selecting multiplayer options.

-----------------------------------------------------------------------
- 1.0.9
-----------------------------------------------------------------------

* Maps
- The Gnomes no longer attack their enemies in the Chaincolt Foothills map, restricting themselves to protecting their settlement.
- The Gnomes now have increased gold quantity in their starting location.

* Modding
- Made it easier to load files within a mod's folder.

* Quests
- Added a few new dialogues to the On the Vanaquisl and Westward Migration quests.

* Terrain
- Trees and rocks now store exactly how much has been taken from them, instead of being removed only after a full harvest.

* Units
- Unit trait generation now occurs immediately upon unit creation, instead of within moments of that happening.

-----------------------------------------------------------------------
- 1.0.8
-----------------------------------------------------------------------

* AI
- Improvements to the Northern Wastelands Goblins AI.

* Maps
- Increased the dwarves' starting resources in the Northern Wastelands map.

* Miscellaneous
- Fixed an issue which caused a player's preferences to be saved and loaded in scenario save files.
- Fixed an issue which caused a crash if an organic unit was clicked in the moment just after being trained.

* Quests
- Increased the time until the second and third goblin "waves" are spawned in the Searching for the Runecrafter scenario.
- Fixed bug which would cause quest objectives to not appear in the top-left corner of the screen when a game is loaded.

-----------------------------------------------------------------------
- 1.0.7
-----------------------------------------------------------------------

* AI
- Fixed an issue which caused AI gold mine construction to sometimes not occur.
- The AI now researches the level 2 ranged projectile upgrade by default when it researches the level 2 melee weapon and shield upgrades.

* Buildings
- Buildings can now be selected by rectangle.
- Multiple buildings of the same type can now be selected at the same time.
- Fixed Celtic farm under-construction animation.

* Maps
- Players now start with five workers in the Brown Hills map.
- Added gold rocks to the Brown Hills map.
- Increased rock quantity in the France map.
- The gnomes in the Chaincolt Foothills now have one additional worker.
- Fixed issue which caused a crash when loading a saved game using the Northern Wastelands map.

* Miscellaneous
- Units no longer inherit the selection group of the building that trained them.
- Resource costs displayed in popups now have a larger font if the "Larger Popup Text" option is enabled.
- Fixed Teuton Iron Shield hotkey.
- Custom games no longer have tech tree restrictions.
- Added hint in the Attack command popup information about how to attack-move.
- Restored OpenGL support.
- Removed debug executable, as it required a DLL that players were unlikely to have, thus greatly reducing its usefulness.
- Fixed issue which prevented some players from using the game in their native resolution at full screen.
- Fixed a couple of crashes which randomly occurred when loading a map in the editor.
- Added 1440 resolution width.
- Added 864 and 900 resolution heights.

* Modding
- Mod screen display improvements.
- Added support for "ThornsDamage" field for units (damages the unit's attacker when hit at melee range).

* Quests
- The Shinsplitter Clan no longer builds a smithy or lumber mill during the A Bargain is Struck scenario.
- The Romans no longer build catapults in the Sack of Iuvavum quest.
- The Shinsplitter Clan now starts with 3 workers in the A Bargain is Struck scenario (previously they started with 5).

* Terrain
- Fixed issues with fern graphics display.

-----------------------------------------------------------------------
- 1.0.6
-----------------------------------------------------------------------

* Miscellaneous
- Added debug executable.
- Added "Urist" to the dwarven personal names list.

* Maps
- Players now start with five workers in the Chaincolt Foothills, Caverns of Chaincolt, Northern Wastelands and Eastern Mines maps.
- Added gold rocks to the Chaincolt Foothills, Caverns of Chaincolt, Northern Wastelands, Shorbear Hills, Svafnir's Lair and Caverns of Flame maps.

* Quests
- Added two healing potions to the Tomb of Durahn Eikinskjaldi mission, to tone down the quest's difficulty.
- Choosing the "No deal" option in the A Bargain is Struck mission now results in a draw.

-----------------------------------------------------------------------
- 1.0.5
-----------------------------------------------------------------------

* Buildings
- Reduced the armor of the gold mine.

* Terrain
- Fixed a bug which caused a crash when the game tried to regenerate forests on the border of the map.

* Units
- Fixed issue which happened when multiple workers were told to build a structure and less than twice the amount of needed resources were stored, causing the other workers to not help constructing the building.

-----------------------------------------------------------------------
- 1.0.4
-----------------------------------------------------------------------

* AI
- The AI no longer tries to build gold mines with workers if it lacks the resources - instead it will now use those workers for other tasks until there are enough resources to build the gold mine.

* Grand Strategy
- In the trade interface, "Bid" or "Offer" will be displayed for each commodity, instead of using negative and positive numbers to represent that.
- The province of Austria now uses the Salzburg map as its battle map.
- The province of Bohemia now uses the Prague map as its battle map.
- The province of Portugal now uses the Braga map as its battle map.
- The province of North Italy now uses the Oderzo map as its battle map.
- The province of Bavaria now uses the Regensburg map as its battle map.

* Maps
- Added Regensburg map.
- Increased starting lumber in the Brown Hills, Caverns of Chaincolt, Chaincolt Foothills and Northern Wastelands maps.

* Miscellaneous
- Autocast and autorepair icon borders now properly show up.
- Added list of traits to the "Traits" entry in the "Game Concepts" section of the encyclopedia.
- Moved "Load Game" button from the main menu to the "Single Player Game" submenu.
- Added information about "." selecting the next idle worker to the hotkeys submenu.
- Fixed issue with mouse grabbing not getting properly saved.
- Fixed bug which caused players with special names to have their name overridden by their faction's name when loading a saved game.
- Updated Wyrmsun icon.
- Added option to change resolution while playing a scenario.
- Added 1920 resolution width.
- Added 720 and 1080 resolution heights.

* Quests
- Fixed bug which caused the Caverns of Flame scenario to not be winnable.
- Significantly reduced the quantity of time until the volcano erupts in the Caverns of Flame scenario.
- Added two speech lines for Marbod in the Home of the Boii quest.
- Added The Blue Danube quest.
- Deactivated the building construction buttons for the Westward Migration mission, as they served no purpose (the player starts with 0 resources and thus cannot build anything) and could help confuse the player.
- Added information in Westward Migration's introduction that no buildings can be constructed and no units can be trained during the scenario.
- The Battle of Magetobria quest now gives 2 technology points instead of 1.
- Improvements to the text of the On the Vanaquisl and Westward Migration quests.

* Terrain
- Fixed issue which allowed buildings to be constructed on top of destroyed rocks.

* Units
- Fixed bug which caused archers to throw arrows when doing their melee attack against buildings.
- When multiple builders construct a mine, now all of them will harvest it when completed (previously only the one to initiate the building did).
- Added base attack icon for the Teuton Catapult.
- Fixed bug which caused the quantity of carried resources to appear in the interface of units which weren't carrying any resources.
- Units controlled by the human player no longer attack back if having already been ordered to move or etc.

* Upgrades
- Added Granite Catapult Projectile and Metal Catapult Projectile upgrades for the Teutons and Goblins (graphics by Jinn).
- Added Bodkin Arrow upgrade for the Teutons (graphics by Jinn).

-----------------------------------------------------------------------
- 1.0.3
-----------------------------------------------------------------------

* AI
- Fixed issue which caused the AI to sometimes abandon under-construction buildings, never to complete them.
- AI workers now are more cooperative when constructing buildings.

* Miscellaneous
- Improvements to gold gathering algorithm.
- Fixed issue with the objectives being drawn at an incorrect height when a message was scrolling down.
- Fixed bug with accessing the encyclopedia or tech tree from within a scenario which caused the player's civilization to change and the music to be set to the main menu one.
- Fixed bug which caused saved games from some quests to crash the game.
- Added option to have larger popup text.
- Tips now pop up when certain unit types are first clicked, to explain their function.
- Added option to display/hide tips in the options menu.
- A tip now popups up when the player first has a unit level up.
- Added "Mouse Grabbing" option to the options screen (accessible from the main menu) and the in-game options menu.

* Modding
- Fixed bug with the mod screen which happened when no mods were present.
- Added support for scrolling mission briefings for modded-in quests.

* Quests
- Instead of going directly to the next mission, quests now return the player to the quest screen for the last played quest's world.
- In the Westward Migration quest (Germanic), the area around the glyph now starts revealed.
- Fixed issue which caused the AI to be passive in the last three Teuton scenarios.

* Terrain
- Fixed bug which caused trees to not regrow correctly.

* Units
- Fixed bug which caused a crash when an archer's missile arrived at a dead unit.
- Dwarven Scouts, Germanic Skutans and Goblin Archers now have increased attack speed.
- Added portrait for the Teuton Krieger (by Jinn).

-----------------------------------------------------------------------
- 1.0.2
-----------------------------------------------------------------------

* Abilities
- The Gnomish Herbalist's Herbal Cure can now be instantaneously cast multiple times only up to 4 times, and it costs 1 mana per HP.

* Buildings
- Added Teuton Watch Tower and Guard Tower (graphics by Jinn).
- Added Teuton Rathaus (graphics by Jinn).
- Added Celt Farm (graphics by Jinn).
- Germanic farms now correctly drop food items when destroyed.
- Added Dwarven Bastion (graphics by Jinn).
- Dwarven Smithies are now cheaper than those of other civilizations, while their Lumber Mills are costlier.
- Instead of being capturable, Mercenary Camps now remain owned by the neutral player, but are usable by players to hire units.
- Increased watch tower and guard tower HP by 100%.
- Added Teuton Burg (graphics by Jinn).
- Reduced the length of the Dwarven Smithy's description.
- Added Teuton Barracks (graphics by Jinn).
- The Germanic Chieftain's Hall, Farm and War Lodge had their graphics updated (by Jinn).
- Buildings are now constructed from outside.
- Buildings can now leave a (harvestable) wood pile when destroyed.
- Improved the shadows of the Dwarven Mead Hall and the Dwarven Mushroom Farm.
- Gold mines now need to be built on top of gold deposits before gold can be extracted from them.

* Civilizations
- The Gnomes now use Dwarven units for the types of unit they lack.
- Added Celt, Goth, Greek, Latin and Norse NPC civilizations (they are essentially identical with the Germanic/Teuton civilization, but them being a different culture affects events and features in Grand Strategy mode).
- Added Teuton civilization (the Germanic civilization can transform into it), representing West Germanic peoples.
- Added Eikinskjaldi Clan as a dwarven faction.
- Added Modsogning Clan as a dwarven faction.

* Grand Strategy Mode
- Added transitions for conifer forest tiles (graphics by Jinn).
- Forests now spawn at a decreased rate in random world maps.
- In random world maps conifer forests now appear at high latitudes, with scrub forests appearing elsewhere.
- Fixed crash which could happen when conquering a province not owned by any factions.
- Dwarven factions now start with Masonry researched in the 25 AD start date.
- Added "Division of Domains", "Asa Lawgiving" and "The Birth of Saeming" flavor events for the Asa Tribe (or the Swede Tribe).
- In the "Gylve's Realm" event, the Jutland peninsula is now granted to a chieftain upon choosing to embark, who then founds the Jute Tribe; upon victory, Gotaland is given to another chieftain, who founds the Goth Tribe.
- Removed the germanic "Tribal Split" event, since the Gylve's Realm event now performs its functions.
- Added "Beldeg's Lands" and "Sigi's Lands" events, which create new germanic tribes when certain territories are conquered by a germanic tribe.
- Added a few Scrub Forest tiles and a gold mine to Iberia.
- A faction can now receive more than one event in the same turn.
- Added "The Sun Shields" flavor event for the Germanics.
- Added "Skilled Masons", "Skilled Carpenters", "Build Observatory?", "Build Library?", "Build Monument?" and "Province Assimilates" semi-random events.
- Fixed a bug which caused non-persistent event to re-trigger after loading a saved game.
- Added "The Sequani's Appeal" and "The Battle of Magetobria" events to the Suebi Tribe.
- Added Albania, Andalusia, Attica, Bulgaria, Crete, Gotland, Iceland, Macedonia, Naples, North Italy, Peloponnese, Serbia and Thrace provinces to the Earth world map.
- The encyclopedia can now be accessed through the menu in Grand Strategy mode.
- Scenarios can no longer be restarted when in grand strategy mode.
- A province can now be attacked if it is only separated from the attacker by a single water province.
- Provinces' names now can change according to the faction that owns them, or according to the province's culture.
- Added 12 events about the legendary rulers of the Goths, Swedes and the Danes.
- Added 26 events about the spread of early Christianity.
- Added "Prestige" variable for factions (icon graphics by Jinn), which influences the likelihood of certain events, as well as trade priority. Factions with negative prestige can't declare war. Prestige can be gained by winning battles (and lost by losing them), or as a consequence of certain events.
- War can now only be declared against factions with which you share a border with, or if both factions have a coast.
- Crafting the Scepter of Fire now grants +100 Prestige to the Norlund Clan.
- Settling Scandinavia now grants +25 Prestige to the Asa Tribe.
- Provinces of a different culture than the owner now produce only 75% of the resources they would otherwise produce.
- Commodity prices now fluctuate according to supply and demand. Provinces will demand less commodities if they are too costly, and more if they are cheap.
- Added events for the development and spread of the Teuton, Goth and Norse cultures out of the Germanic one (if the Dane, Goth, or Swede Tribe is player-controlled, then it will develop Teuton culture instead of the Norse one, since the latter is not playable).
- Added Atlantic Ocean water province to the Earth world map.
- Certain provinces are now always generated adjacent to water in the random world map.
- The Shorbear Hills now start with a bastion.
- Fixed a bug which caused units to not be saved correctly if the player quit during a grand strategy battle.
- Added 3000 BC start date for Nidavellir.
- Added The Mead of Wisdom event, along with events for Durin appearing and dying.
- Added "Tactical Unit Multiplier" option to Grand Strategy mode.
- Gold now has to be found (there is a random chance that tiles with gold will be found every turn by their owner) before being mined.
- Improved performance by making the entire minimap not be redrawn whenever a province changes hands; now only the affected province is redrawn.
- The grand strategy map now scrolls by half a tile, instead of by a whole tile.
- The grand strategy map now continuously scrolls when pressing an arrow button.
- In the "Westward Migration" event, if the player refuses to migrate, now a portion of the tribe will split off and migrate.
- Added events related to The Home of the Boii quest and Marbod.
- The results screen after grand strategy battles now displays the province the battle was fought in, and a message is now displayed when the battle begins indicating its location.

* Heroes
- Added Durin (dwarf) (icon by Jinn).
- Clicking on heroes no longer displays the "You have [...]" in the statusline.
- Added Marbod (teuton) (icon by Jinn and unit graphics by b_o).

* Items
- Added Potion of Slowness (graphics by b_o).
- Added death animations for potions (graphics by b_o).

* Maps
- Dwarven Militia are now possible to be generated in dungeons.
- Added Belfort map.
- Added Prague map.
- Added Salzburg map.
- Added Fjalar's and Galar's Hall map.
- The Shorbear Clan now starts with a bastion instead of a mead hall in the Shorbear Hills map.
- Added the Tomb of Durahn Eikinskjaldi map, based on the "Tomb of Durahn Oakenshield" dungeon by Dyson Logos, which the author kindly agreed to be released under the GPLv2.
- Decreased quantity of trees in the Tanais map.
- Decreased the size of the Tanais map.
- Decreased quantity of trees in the Holmgard map, and decrease its size slightly.
- Decreased quantity of trees in the random forest maps.
- Wyrms now have 20% chance of appearing on a cave or swamp map.
- Random dungeon generation now creates more specific rooms (i.e. treasure rooms, laboratory rooms, etc.).
- The feast hall area in random dungeons now includes drinking tables.
- Heroes in random dungeon maps now begin next to stairs.
- Added Oderzo map.
- Added Braga map.
- Custom maps now appear automatically under the "Custom" world in the single player setup screen.

* Miscellaneous
- Three new unit settings have been added to the Single Player Game Setup: Basic Squad (four infantry units), Improved Squad (three infantry units and two ranged units) and Advanced Squad (five infantry units, three ranged units and one siege weapon).
- Added caltrops and trap objects (graphics by b_o).
- Gold, lumber, coal, food and score icons reworked (by Jinn).
- Added "Civilized (Bronze)" and "Civilized (Iron)" tech level and max tech level options in the Single Player Game Setup menu.
- The cursor now properly changes according to civilization outside of RTS mode (in the menus and in Grand Strategy mode).
- Scenarios can now be started directly from the quests menu.
- Added "Game Concepts" section to the encyclopedia, to better explain the game's features.
- Implemented numerous engine improvements by cybermind.
- Walls are now much more resilient in dungeon maps.
- The player now receives a message when a gold mine is nearing depletion or has been depleted (thanks to cybermind).
- Added "No Randomness" game setup option (for both single player and multiplayer). Choosing this option will cause damage to be constant, with critical strike chance being used as a modifier to damage instead, and accuracy and evasion modifying damage instead of determining the chance to hit. With this option, unit traits also have no effect on gameplay (unless the unit is a hero, in which case the trait behaves normally).
- Added "Civilizations" and "Factions" sections to the encyclopedia.
- Fixed a few issues with multiplayer (thanks to cybermind).
- The tips menu no longer appears at startup in multiplayer games.
- Added option for showing a resource bar under mines.
- There is now a Single Player Game submenu, from which the Quests, (Single Player) Custom Game and Tech Tree screens can be accessed (based on feedback by Dinomaniak).
- Tech tree descriptions now show for what that tech tree element is required for.
- New icon frame (by Jinn).
- The encyclopedia now displays the class of units, buildings and technologies.
- The tech tree is now brought up when finishing a scenario, if the civilization you played that scenario with has unspent technology points.
- Tooltips now appear in popups.
- Fixed bug which caused wood piles to not disappear after being depleted.
- "Random" option is now selected by default in the map editor, and new maps are created with random variations of the basic tile (instead of always using the same variation).
- Changed transparency of non-acquired tech tree elements to 66%.
- Menu buttons now play the "click" sound when clicked.
- The yellow targeting cursor is now displayed when hovering over resources if a worker is selected, and the red targeting cursor is displaying when hovering over enemy units if a military unit is selected.
- When clicking a unit's button that brings up the targeting cursor, it now turns green when hovering over a friendly unit, yellow when hovering over a neutral unit, and red when hovering over an enemy unit.
- Added stone as a resource, which can be harvested from rocks. Stone is generally used for fortifications, but normal dwarven structures also require stone.
- Added new UI for the dwarves and the germanics (graphics by Jinn).
- If the player only has farms, he now loses the match without it being necessary for all of them to be destroyed.
- Quest objectives now appear in the top left of the screen.
- Added 720 resolution width.
- Missiles can no longer fly over cave walls, dungeon walls or doors.
- New mod loading interface, which allows saving which mods you want enabled.

* Quests
- Added The Battle of Magetobria quest.
- Added The Home of the Boii quest.
- Added The Mead of Wisdom quest.
- Added The Tomb of Durahn Eikinskjaldi quest.
- The Asa Tribe now correctly starts with 0 resources in the Westward Migration quest.
- Increased quantity of resources the Asa Tribe starts with in the Northwards to the Sea quest.
- The natives can no longer research Broad Sword, Bronze Shield and Barbed Arrow in the Northwards to the Sea quest.
- Added The Sack of Iuvavum quest.
- Added The Razing of Opitergium quest.
- Added Moving into Galicia quest.

* Terrain
- Trees now regrow after a long time has passed.
- Added hole (appears in caves, functions as a tree stump would).
- The Conifer Forest tileset now has different trees for Summer and Autumn (the season is chosen randomly when starting a scenario).
- Land-based decoration units are now properly removed if they are on top of a tree, rock or wall tile.
- Logs are now harvestable for lumber.
- Added harvestable gold rocks (graphics by Jinn).
- Tree stumps are now harvestable for 50 lumber.

* Units
- The Germanic Skutan now has gray-haired and blond variations for its unit graphics (by b_o).
- The Gnomish Recruit now has a gray-haired variation for its unit graphics (by b_o).
- Added Teuton Catapult (graphics by b_o).
- The Gnomish Caravan's graphics have been updated (by b_o).
- The Goblin Thief's attack now sometimes displays a slashing animation instead of a thrusting one (graphics by b_o).
- Fixed two bugs which could cause desync in multiplayer due to heroes.
- Skutans and Goblin Archers now have greater range, but lesser damage.
- Units now can miss attacks, depending on their accuracy relative to their target's evasion. Buildings have 0 evasion.
- Gnomish, goblin and kobold units now have greater accuracy and evasion, and they no longer have a greater proportion of piercing damage than others.
- Added "Reckless" (-1 Evasion) and "Clumsy" (-1 Accuracy, -1 Evasion) traits, and changed other traits to give modifiers to accuracy/evasion where appropriate.
- The Skutan now has blond and gray hair-color variations for its icons (by b_o).
- Dwarven Steelclads and Thanes now deal more damage.
- The minimum damage in a unit's damage display now shows the minimum possible damage before armor would be applied.
- Reduced the length of the Dwarven Scout's description.
- Maximum number of selectable units is now 36 (up from 18).
- Added Yale critter (unit graphics by b_o).
- Fauna now fights back when attacked.
- Wyrms and gryphons will now predate on organic units (including other fauna).
- Fauna can now reproduce (newborn fauna only mature after a certain number of cycles; slimes reproduce asexually).
- Slime unit graphics have been updated (by b_o).
- Fauna will now tend to avoid settlements (except for vermin).
- Fauna will no longer be generated in positions close to settled areas.
- Killing fauna now yields experience points.
- Fixed bug which caused dead units who don't have corpse units defined to appear at the wrong draw level.
- Added Bee unit (graphics by b_o).
- Added table, chair, shelf and bed decoration units (graphics by b_o).
- The names of resources are now properly capitalized in the unit display.
- The Goblin Spearman now costs lumber, and so does (to a lesser extent) the Dwarven Axefighter.
- Combat now features a flanking malus to evasion (only applies to organic units).
- Fixed erroneous message about supply when upgrading units.
- Added Dwarven Yale Rider (graphics by b_o).
- Fauna will now feed on the appropriate sorts of food.
- Rats now have increased movement speed.
- Added Snail (graphics by b_o).
- The Gnomish Herbalist's Herbal Cure ability now costs less mana to cast.
- Added Slug (graphics by b_o).
- Added Blood Bat and Dread Bat (graphics by b_o).
- Goblin Spearmen now have a bonus against cavalry, but have lower normal damage.
- Added voiceovers for the gnomes (by Brian Jennings).
- Added new sounds for when a worker is repairing/building (by Wildfire Games).
- Rats will now sometimes be hiding within tree stumps.
- Units now make a sound when stepping.
- Added Crow (graphics by b_o).
- Added Teuton Krieger (unit graphics by b_o).
- Fixed issue which caused unit sight to not be perfectly symmetric vertically.
- "Coward" units (i.e. workers) now attack back if their attacker is also "coward", or has 3 HP or less.
- Added more voice sounds for the dwarves and goblins (by b_o).
- Giving an order to build while multiple workers are selected will now make all of them work on constructing the building.
- Units controlled by the human player now attack back.
- A worker right-clicking on an enemy now results in the worker attacking the enemy.
- Units now attack barrels and doors if they are right-clicked.
- Some fauna units now play idle sounds.
- Added Frog (graphics by b_o).

* Upgrades
- Added Masonry upgrade (increases building HP and armor, and allows upgrade to guard towers) for the Dwarves, Goblins and Teutons (graphics by Leo).
- Added Spatha upgrade for the Teuton civilization (graphics by Leo).
- Ballista bolt upgrades now cost lumber as well as gold.
- Added Iron Shield upgrade for the Teuton civilization (graphics by Jinn).

-----------------------------------------------------------------------
- 1.0.1
-----------------------------------------------------------------------

* Buildings
- Added Germanic Farm (graphics by Jinn).
- Added Germanic Chieftain's Hall (graphics by Jinn and modification to make the fire animated by b_o).
- Added Germanic War Lodge (graphics by Jinn).
- Added Germanic Carpenter's Shop (graphics by Leo).
- The Mercenary Camp's fire is now animated (modification by b_o).
- Sentry Towers now can garrison one organic unit.
- Guard Towers now can garrison two organic units.
- Added Germanic Smithy (graphics by Leo).
- Sentry towers now have an extra under construction frame and a frame for when they are occupied.

* Civilizations
- Added Germanic civilization (human).

* Factions
- Added Lggi Tribe (goblins).
- Added Khag Tribe (goblins).

* Grand Strategy Mode
- Added the possibility to select Earth in the Grand Strategy Mode.
- Fixed issues which caused provincial borders and fog graphics to appear over the interface in Grand Strategy mode.
- Provinces in the Grand Strategy mode now have a culture (a civilization) assigned to them, which remains even if they are conquered, and the units and buildings available in the province are those belonging to that province's culture/civilization.
- Heroes now feature in Grand Strategy mode, and can be moved between provinces and be used to attack and defend (hero levels and upgrades are persistent, as in normal single player gameplay). The presence of heroes in a province owned by the player is marked by a crown on the top-left of the province's settlement.
- Added the quests of the Germanic campaign as events for the Grand Strategy mode.
- Added four flavor events for the Germanics, "The Curved Swords", "The Sun Chariot", "Nobleman's Burial" and "Pytheas' Voyage".
- Mercenary camps can now be used in Grand Strategy mode (they are not buildable, but appear automatically in a province once it has a town hall, a barracks and a smithy; currently mercenary camps only appear if the world is Nidavellir, as there are no mercenaries to be recruited for Earth).
- Technologies now cost "Research" (icon graphics by Jinn) as well as normal resources; research gathering rate depends on how advanced the average province of the faction is.
- The grand strategy battle AI now uses units that don't belong to its civilization to attack.
- Provinces now provide a market for lumber, each province (with a town hall) that is owned by a faction consuming 50 lumber.
- Improvements to how the AI chooses to attack provinces.
- Dwarven provinces that have a town hall and barracks now build up militia units (maximum of 4), which appear in battle to defend the province.
- Dwarven factions now start with the first level axe, shield and throwing axe upgrades researched for the 25 AD starting date and beyond.
- Dwarven factions now start with the second level axe, shield and throwing axe upgrades researched, along with the first level ballista one, for the 550 AD starting date and beyond.
- Improvements to how the AI chooses to train/build units.
- Added the quests of the Dwarven campaign as events for the Grand Strategy mode.
- Added "Peaceful Valley" province in Nidavellir, owned by the goblin Lggi Tribe.
- The Heartfangs province now begins owned by the goblin Khag Tribe.
- Added events for Rugnur, Baglur, Durstorn and Thursagan dying of natural causes, if they have survived until a certain date and haven't died in battle or in a scenario yet.
- Added the possibility to generate a random world map for Grand Strategy mode.
- Added conifer forest terrain (graphics by Jinn).
- Added random event "Bountiful Harvest" (+100 gold per province owned, the event can happen multiple times).
- Added "Goblin Looters" random event (for Nidavellir and random world maps).
- Plains and dark plains tiles are now automatically made into hills if there is a gold mine there.
- If the player has 100000 or more of a resource stored, now that resource's quantity appears in a smaller font.

* Maps
- Added Tanais map (Earth).
- Added Jutland map (Earth), based on the Scandinavia map by GM1530 which was licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- Goblin banners are now placed in the entrances to the goblin settlements of players 5 and 6 in the Caverns of Flame map.
- Added random maps for the fairlimbed forest tileset (Alfheim).
- Added Ulfdalir map (Alfheim).
- Added Holmgard map (Earth).
- Random maps are now placed in the "Random" world, and feature a mix of civilizations regardless of tileset.
- Added Random Dungeon map.
- Added Malmo map (Earth).
- Fixed an issue which caused players to not have symmetric starting locations in symmetric maps.
- In the Chaincolt Foothills map, a few Shinsplitter scouts are now hidden within tree stumps.
- Added Random Valley map.
- Tree distribution is now more widely dispersed in many random maps, and they have a more variable quantity of trees (for instance: there will be more trees in random forest maps than in random swamp ones).

* Miscellaneous
- Added germanic bronze short sword icon (by Leo).
- Added germanic wooden oblong shield icon (by Leo).
- Fixed error which made special characters not appear correctly, and updated texts accordingly.
- Added germanic stand ground icon (by Leo).
- The player now receives a message if they receive a new objective.
- Added germanic arrow icon (by Leo).
- Added the remaining Poetic Edda chapters to the encyclopedia texts.
- A unit's, building's or technology's name now appears in the bottom of the screen when hovering the mouse over its icon in the encyclopedia, along with their civilization (if any).
- Encyclopedia pages now can have quotes which are relevant to the entry.
- Added quotes for the Mead Hall, Mushroom Farm, War Hall, dwarven Smithy, Thrymgjol Shield, Gryphon, Wyrm, Surghan Mercenary and Thursagan.
- Tech tree code made more dynamic to support multiple civilizations without significant extra coding being necessary for each of them.
- Miscellaneous tech tree code improvements.
- If there is any incomplete quest available, then its map will now be automatically selected when starting the single player game menu.
- Factions now have a particular color which they will use (or their secondary color, if their preferential color is already in use).
- Added crow sound (from the public domain).
- Added "Max Tech Level" option in the Single Player Game Setup screen.

* Quests
- Added On the Vanaquisl quest.
- The leveled-up units that appear on the player's side during quests (i.e. the gnomish envoy) now begin with an experience upgrade already chosen.
- Added Westward Migration quest.
- Added Northwards to the Sea quest.
- Added Gylve's Realm quest.
- The gnomish caravans in the A Bargain is Struck quest are now loaded with chests, and if those chests are dropped then the scenario is lost.

* Terrain
- Tile types can now use different images in a tileset's definition.
- Updated swamp rocks (graphics by Jinn).
- Added fairlimbed forest tileset (graphics by b_o).
- Dungeon tiles updated (by b_o).
- Added north-south dungeon doors (graphics by b_o).
- Added roaming fog (graphics by b_o).
- Added tree stump (graphics by b_o), in which units can hide from enemies.

* Units
- Added Bura (germanic worker) (unit graphics by b_o and icon by Leo).
- The Goblin Impaler is now called simply "Impaler", and the same was done to other similar cases.
- There is now a boolean field ("Transparent") which allows making a unit type's image transparent.
- Organic units now have personal names.
- The goblin Glider is now an organic unit.
- Gryphons now move greater distances during their random movement.
- Added Bat, which functions as fauna for cave maps (graphics by b_o).
- Added Bird, which functions as fauna for forest maps (graphics by b_o).
- Dwarven Smith renamed to "Smithy".
- Smithies now have personal names.
- Added Erala (germanic warrior) (unit graphics by b_o and icon by Jinn).
- Added Goblin Thief (unit graphics by b_o and icon by Leo), a unit that can backstab other units (give increased damage to them if they are facing opposite to the goblin thief) and can be hired at the mercenary camp (a maximum of 6 goblin thieves can be had at a single time).
- Added Gnomish Herbalist (unit graphics by b_o and icon by Leo).
- Scouts and archers can now attack from within towers.
- Experience is now distributed among nearby units (radius of 6) which belong to the same player as the unit that struck the final blow.
- Mechanical units now no longer display Level and XP.
- Added Sword Mastery learnable ability (for germanic warriors, gnomish recruits and Greebo) (graphics by Jinn).
- Added Dwarven Militia (icon graphics by Jinn and unit graphics by b_o).
- Added Germanic Skutan (unit graphics by b_o and icon by Leo).
- Organic units can now have personal traits (i.e. strong, weak, keen) which affect their stats.
- Units' gray hair variation is now linked to the "old" trait.
- Wyrm's "vicious" icon variation is now linked to the "vicious" trait.
- Gnomish caravans can now carry two units.
- Gryphon riders now have a gray-haired variations (graphics by b_o).
- Added Long Swordsman as a static NPC (doesn't attack and is indestructible), which sometimes appears in random dungeons giving the player extra experience (unit graphics by TaShadan and icon by Jinn).

* Upgrades
- Added germanic bronze shield upgrade (graphics by Leo).
- Added germanic broad sword upgrade (graphics by Leo).
- Added germanic barbed arrow upgrade (graphics by Leo).

-----------------------------------------------------------------------
- 1.0.0
-----------------------------------------------------------------------

* Maps
- Added Caverns of Flame map (Nidavellir), from Battle for Wesnoth.
- Fixed an issue which caused goblin units to sometimes appear in unreachable positions during a grand strategy battle in the Northern Wastelands map.

* Miscellaneous
- Alchemy Lab graphics have been updated (by b_o).
- Alchemy Lab renamed to Alchemy Bench.
- Added the Vafthruthnismol to the encyclopedia texts (The Poetic Edda).

* Quests
- Added Caverns of Flame quest, the last one of the Scepter of Fire campaign.
- The player's units are now healed between the first and the second parts of the Hills of the Shorbear Clan quest.
- The gryphon rider present in the quests now begins the scenarios at level 2.

-----------------------------------------------------------------------
- 0.1.8
-----------------------------------------------------------------------

* Buildings
- Improved capturable neutral building conversion code.

* Heroes
- Greebo's icon has been reworked (original Greebo icon by b_o, reworking by Leo).

* Maps
- Added Svafnir's Lair map (Nidavellir), from Battle for Wesnoth.
- In the Shorbear Hills map, the blue player now starts with no miners, as the scenario was too difficult. The green player's starting resources are now the same as those of the other players.

* Miscellaneous
- Fixed a bug which caused the screen to continue scrolling when a dialogue popped up.
- Added Wyrmsun logo to the main menu (graphics by Jinn).

* Quests
- Added The Wyrm quest.
- Fixed issue with the Hills of the Shorbear Clan quest that was causing the same objective to be added multiple times if the game were loaded at a particular point.
- Updated initial quest dialogues for A Bargain is Struck, Closing the Gates, Searching for the Runecrafter and Gathering Materials to include an introductory text before the dialogue begins.

* Terrain
- Added stalagmites decoration unit, which appears in cave maps (graphics by b_o).
- Fixed bug which allowed mushroom patches to appear in inappropriate tiles under certain circumstances.
- Fixed a bug with the cave tileset which caused units to sometimes attack at infinite range.
- Added volcanic crater decoration unit (graphics by Leo).
- Added alchemy lab decoration unit (graphics by b_o).

* Units
- Updated the Wyrm's encyclopedia entry.
- Gnomish units now have their own attack button (graphics by Leo).
- Gnomish units now have their own boots icon for the move button (graphics by Leo).
- Added Kobold Footpad (unit graphics by b_o and unit icon by Leo).
- AI mercenaries now properly attack.
- Improved glider movement code.
- New glider sounds (by b_o).
- Fixed a bug which caused human player-owned mercenaries to attack automatically (this is supposed to happen only to AI-controlled mercenaries).
- Fixed a bug which caused three extra mercenaries to be granted at scenario start if there is a mercenary unit present (this is supposed to happen only when the mercenaries are hired at the mercenary camp).
- The AI now makes use of level-up unit type upgrades.
- Added "Mercenaries" category in the encyclopedia, and added an entry for the Surghan Mercenaries.

* Upgrades
- Fixed an issue which caused already-researched upgrades to be researchable again after a game being loaded.

-----------------------------------------------------------------------
- 0.1.7
-----------------------------------------------------------------------

* Buildings
- Added Mercenary Camp (graphics by Jinn), neutral building where mercenaries can be hired, and which is generated in some maps.

* Grand Strategy
- The Shorbear Hills province now uses the Shorbear Hills map instead of a random swamp map.

* Maps
- Added Shorbear Hills map (Nidavellir), from Battle for Wesnoth.

* Miscellaneous
- Added a couple of new hints.
- Added Jotunheim description to the encyclopedia.
- If a player holds only goblin gliders, he is defeated.
- New grand strategy national border graphics (by Jinn).
- Allied or neutral AI Players now change their diplomatic stance to enemy if attacked.
- New grand strategy provincial border graphics (by Jinn).

* Quests
- In the A Bargain is Struck quest dialogue, the options that result in foregoing the quest now have "(Forego Quest)" written.
- Fixed a few issues related to quests and saved games.
- Added Hills of the Shorbear Clan quest.

* Units
- The player now receives a message notification when a unit levels up.
- Added water elemental description to the encyclopedia.
- Slimes now have an icon (graphics by Leo); as a result, they are now selectable and appear in the encyclopedia.
- New wyrm icons have been added (graphics by Leo); the previous wyrm icon is now used as a variation icon of the green-scaled wyrm.
- The level up button now appears immediately upon level-up, instead of the player having to click the unit again for it to appear.
- Goblin gliders now have an icon (graphics by Leo); as a result, they are now selectable and appear in the encyclopedia.
- The Surghan Mercenaries are now hireable at the Mercenary Camp.

* Upgrades
- The graphics for the dwarven level 3 shield icon have been updated (by Leo).

-----------------------------------------------------------------------
- 0.1.6
-----------------------------------------------------------------------

- Added the new "Grand Strategy Mode", available from the main menu. In it, the player leads a country or tribe, and gather resources and produces units at the strategic map level, while battles are fought through RTS maps. Please note that there are still a few crashes with the mode I haven't been able to solve yet, and as such it is a good idea to save often.

* Buildings
- Added Goblin Town Hall (graphics by Leo).
- Added Goblin Mess Hall (graphics by Leo).
- Added Goblin Farm (graphics by Leo).
- Added Goblin Lumber Mill (graphics by Leo).
- Added Goblin Fugla Forge (graphics by Jinn).
- Renamed the Blacksmith to "Smith".
- Fixed an issue which caused workers to be converted along with the neutral human lumber mill.
- The dwarven guard tower now benefits from throwing axe upgrades (the tower's initial damage has been reduced accordingly, so that the damage when fully upgraded is the same as the normal damage was previously).
- Fixed an issue which caused the AI to keep attacking human lumber mills that previously were owned by enemies but that they took control over.

* Factions
- The Gnomish faction is now again called "Untersberg".

* Heroes
- Fixed a bug which caused heroes not to begin with the extra HP they should have, if they had a level higher than the quantity of upgrades available.
- Heroes are no longer hireable.
- Added special graphics for Rugnur (axefighter) (graphics by b_o).
- Greebo's icon and UI image have been updated (by b_o).
- Heroes now begin scenarios with the experience necessary to be at the level they are on (previously they always began with 0 experience).

* Items
- When items are used, now they display a message instead of a dialogue.
- Improved item code.

* Maps
- Added Iberia map (Earth) by Miguel Farah F., from FreeCiv.
- Added France map (Earth) by Mathieu Roy, from FreeCiv.
- Added North America map (Earth) by Rob Best, from FreeCiv.
- Added Eastern Mines map (Nidavellir), from Battle for Wesnoth.
- Added Southern Tunnels map (Nidavellir), from Battle for Wesnoth.
- Added North Italy map (Earth) by GM1530, licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- Added South Italy map (Earth) by GM1530, licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- Added Southern Central Europe map (Earth) by GM1530, licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- Added Southern Great Britain map (Earth) by GM1530, licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- Added Central Great Britain map (Earth) by GM1530, licensed under the GPLv2 and included in the "GM1530 Scenarios" modpack for FreeCiv.
- In the Brown Hills map, player 1 is now Gnomish, and player 2 Goblin. Furthermore, the two gnomish players are allied, while the goblin player is an enemy both to the dwarven and to the gnomish players.

* Miscellaneous
- The option of choosing the tileset has been removed from the single player game setup, as the different tilesets are not exactly interchangeable.
- The option of having events activated or deactivated has been removed, as it didn't serve enough of a purpose to justify the space it occupied.
- Added the option of choosing your starting tech level in the single player game setup. Other players will use the same tech level as you, unless the map otherwise specifies. The two tech levels available are "Agrarian (Bronze)" (start as usual) and "Agrarian (Iron)" (start with level 1 weapon and shield upgrades researched, if you have acquired the upgrades in the tech tree).
- Quests and acquired technologies in the tech tree and quest screens now appear player-colored (usually red for dwarves).
- The buttons in the quest and tech tree screens now have frames like the in-game buttons.
- Gold coins now give 5 gold, while gold sacks give 100 and gold chests 500 (previously the quantities were 25, 500 and 1000, respectively).
- Goblins can now appear in random maps.
- Dwarves, gnomes and goblin now leave decaying bodies after they die (graphics by Jinn).
- The dwarven ballista's attack button is now a ballista bolt (previously it used the dwarven level 1 axe) (graphics by Leo).
- Added two dwarven ballista bolt upgrades (graphics by Leo).
- Fixed bug which caused the "Units" button in the editor to sometimes not display the correct player color.
- Added "Encyclopedia" screen (accessible from the main menu), where one can read more about the units, buildings and technologies represented in the game.
- Removed many messages which were a bit too superfluous (i.e. a message whenever a unit were trained).
- The fog of war can now have graphic variations.

* Modding
- Tileset tile size now can properly be changed.
- Added "GetUnitTypeData" lua function for getting characteristics from unit types; this function works much in the same way as the "GetPlayerData" function.

* Quests
- Quest-related events no longer appear if the "Resources", "Units", "Opponents" or "Game Type" options are not set to "Map Default" in the single player game setup.
- The gnomish king is now called "Pypo I", instead of having his name be randomly generated.
- Added the "Gathering Materials" quest.

* Terrain
- Added cave tileset (graphics by Jinn).
- New wall and floor tiles for the dungeon tileset, as well as decorations for them (graphics made by b_o by modifying those found here: http://opengameart.org/content/dungeon-crawl-32x32-tiles).
- Added rug tiles for the dungeon tileset (graphics by b_o).
- Added wood pile object, replaces trees as the source of lumber in cave and dungeon maps (graphics by Jinn).
- The wyrm skeleton now has a non-horned variation (graphics by b_o).
- Decorations no longer show as points on the minimap.
- Added new fog of war graphics (by Jinn).
- The issue where decorations appeared in the info panel when the cursor hovered over them has been fixed.

* Units
- Dwarven ballistas and gnomish caravans are now repairable.
- Added dwarven Thane (unit graphics by b_o and icon by Jinn).
- Units' graphic variations can now be defined in the unit type's definition
- Brown-haired dwarven axefighters, steelclads and thanes now use a brown-haired icon as well (graphics by Jinn).
- Gray-haired gnomish workers now have an appropriately colored icon to match (modification by b_o and Jinn of the gnomish worker icon).
- Added Surghan Mercenary (special dwarven steelclad) (icons by Leo).
- Fixed a bug which caused goblin archers controlled by the human player to not use their secondary melee attack.
- Added goblin War Machine (graphics by b_o).
- Goblin archers now use a dagger instead of punching when doing their secondary melee attack.
- The dwarven gryphon rider and the gnomish scavenger icons have been reworked (by Jinn).
- Dwarven scouts can now randomly get an icon variation (braided beard) (graphic by Jinn).
- Blue-feathered gryphons now have a blue-feathered icon to match (modification by b_o and Jinn of the gryphon icon).
- Black-haired, blond-haired and gray-haired dwarven axefighters, steelclads and thanes now have an appropriately colored icon to match (modification by b_o and Jinn of the axefighter, steelclad and thane icons).
- Blond-haired and gray-haired dwarven scouts now have an appropriately colored icon to match (modification by b_o and Jinn of the scout and scout with braided beard icons).
- Dwarven axefighters no longer require a blacksmith to upgrade to a steelclad.
- Units that can upgrade to a better unit type no longer can acquire upgrade abilities (i.e. steelclads no longer can acquire "axe mastery"; instead, they must first upgrade to a thane, and in their next level up they will be able to learn "axe mastery").
- Added gray-feathered variation for the gryphon (graphics by b_o).
- Added two new graphic variations for the gryphon rider (graphics by b_o).
- Added Wyrm (unit graphics by b_o and icon by Leo).
- The dwarven Scout now moves slightly faster.
- Animals now eat food items.
- Added Slime, which functions as fauna for swamp and cave maps (graphics by b_o).
- Red-haired dwarven axefighter, steelclad and thane graphics updated (by b_o).
- Added goblin glider (graphics by b_o).

-----------------------------------------------------------------------
- 0.1.5c
-----------------------------------------------------------------------

- Wyrmsun updated to the latest version of the Stratagus engine (thanks to cybermind for helping me compile it).

* AI
- Fixed a bug which caused the AI to get stuck and do nothing.

* Buildings
- Resource processing improvements are now correctly displayed on the interface of town hall and lumber mill type buildings.
- Town halls now properly can't be build too close to gold or coal mines.

* Maps
- Improved random map generation so that starting town halls won't be placed too close to gold mines.
- Fixed an important bug which caused the wrong map to be loaded if the map's quest had not yet been completed.

* Miscellaneous
- Added slider graphics for the dwarves (graphics by Jinn and code based on DinkyDyeAussie's).
- Buttons in the unit interface now correctly display frames and shift when clicked (thanks to cybermind and DinkyDyeAussie).
- The infopanel is now correctly displayed (thanks to cybermind and DinkyDyeAussie).
- Added a Lua function that returns the name of a tile's terrain.
- Added a Lua function that returns whether a tile's terrain has a certain flag.

* Units
- Goblin worker graphics updated (by b_o).
- Dwarven ballista graphics updated (by b_o).
- Goblin units now have voice sounds for when being selected, when acknowledging an order and when ready after training (sounds by b_o).
- Gryphon damage and HP increased.
- Added barrel (appears in dungeon maps and may drop potions).
- Added graphics for the dwarven miner when carrying coal (graphics by b_o and modified by Jinn).

-----------------------------------------------------------------------
- 0.1.5b
-----------------------------------------------------------------------

* Maps
- Names of maps with incomplete quests now show up with their colors reversed, in order to make it easier for the player to identify which maps to play to complete the remaining quests.
- The correct portrait is now used in dialogues for the gryphon riders in the Searching for the Runecrafter quest (previously the scout portrait was used).

* Miscellaneous
- Cancel buttons in submenus in the unit interface are now correctly hotkeyed to the "Esc" key.
- Added graphics for checkboxes for the dwarves (by Jinn).

* Units
- Dwarven units now have voice sounds for when being selected, when acknowledging an order and when ready after training (sounds by b_o).

-----------------------------------------------------------------------
- 0.1.5a
-----------------------------------------------------------------------

* AI
- Made some improvements to the default AI.

* Maps
- Fixed a bug where choosing to have a lower number of opponents would cause a crash with certain maps (such as Brown Hills).
- Fixed some issues which happened when a custom map used the same name in the PresentMap function in its SMP file as an existing map.
- A few gryphons are now generated in the Northern Wastelands map.

* Miscellaneous
- Fixed a couple of strings in the editor.
- Fixed an issue where it would be impossible to win on maps with the default objectives.
- Fixed a game restart related issue for maps with special objectives.

* Units
- Added graphics variations for the gryphon and the rat (graphics by b_o).
- Ballista graphics have been updated (by b_o).
- Gryphons now correctly use the same minimap color as critters.
- Fixed an issue where a unit's graphics variation would only be applied after it finished moving, if a rally point had been set for its training building.
- Improved unit graphics variation application code, as well as carrot/cheese drop code for gnomish farms.

-----------------------------------------------------------------------
- 0.1.5
-----------------------------------------------------------------------

- Wyrmsun upgraded to the latest version of the Stratagus engine. Persistent and save game data are now stored in the game's folder itself. If you have data saved from earlier versions, copy it from $USER_NAME/AppData/Roaming/Stratagus/wyr/ to /Wyrmsun/wyr/

* AI
- The AI now properly attacks more than once.

* Buildings
- The openings in the Sentry Tower graphics have been updated (by Jinn).
- Fixed an error which allowed guard towers to level up.
- Added the dwarven blacksmith (graphics by Leo).
- The gnomish farm now sometimes drops cheese or carrots when destroyed.
- Added coal mine (graphics by Jinn).

* Events
- Event message buttons now support hotkeys.
- Event messages now support icons being displayed, instead of only larger images.
- Event messages now allow support for more than two options.
- Added a dialogue line for Greebo when he is found.
- When Greebo dies now he drops a gold sack which gives gold to the player that gets it.

* Heroes
- Levels acquired with hero units are now saved across games (only in single player).
- Baglur and steelclad Rugnur now correctly have the same amount of armor as steelclads (previously they had the same amount of armor as axefighters).
- Added Durstorn (dwarf; icon graphics by Leo).
- Added Thursagan (dwarf; icon graphics by Leo).
- Hero units now have the same base stats as their base units, as their persistent (and usually higher) levels already give them an edge.
- Adjusted the requirements for Rugnur and Baglur to be available for hiring.
- Baglur is now available for hiring after the completion of "Closing the Gates", while Rugnur is available for hiring after the completion of "A Bargain is Struck".
- Greebo's eyes are now correctly no longer team-colored in his icon.
- Given that hero levels are now persistent, their costs were significantly increase to compensate for that (each of them costs 5250 now).
- Level-up upgrades chosen with hero units are now persistent.

* Items
- Added gold sack (gives 500 gold when touched; graphics by b_o).
- Added gold chest (attack to open, gives 1000 gold; graphics by b_o).
- Added gold and gems chest (attack to open, gives 1500 gold; graphics by b_o).
- Added potion of healing (heals an injured unit if touched; graphics by b_o).
- Added potion of decay (damages a unit if touched; graphics by b_o).
- Added gold coins (gives 100 gold when touched; graphics by b_o).
- Added cheese (heals 3 HP when touched; graphics by b_o).
- Added carrots (heals 3 HP when touched; graphics by b_o).

* Maps
- The Aquitania map generation script and the default random map generation script now create dark dirt and dark grass tiles.
- In the Caverns of Chaincolt map, player 2 (blue) now starts with a dwarven steelclad instead of one of its axefighters.
- In the Caverns of Chaincolt map, player 3 (green) is now hostile to all other players.
- An error which made the Caverns of Chaincolt map unplayable in multiplayer has been fixed.
- Maps now appear on the scenario list dynamically (use "MapWorld" within the map's .smp file to indicate which world's list it will appear on, and "MapRequiredQuest" to indicate which quest the map requires to be shown, if any). Maps can be placed either directly within the main maps folder, or in subfolders within it.
- The world list in the single player game setup is now built dynamically from world references within maps.
- When finishing the A Bargain is Struck quest in the Chaincolt Foothills map the player is now taken directly to the next quest's map (Caverns of Chaincolt).
- Fixed one tile which was wrongly set to be dry mud, when it should be mud.
- Added the Northern Wastelands map (Nidavellir).
- Added two potions of healing to the Brown Hills map.
- Added the Hall of Lyr map (Nidavellir, uses dungeon tileset). In this map, you get one random hero, and use them to clear the hall of its guards (green). The map is also usable in multiplayer, as the (hostile and playable) blue player receives one random hero as well.

* Miscellaneous
- The player now receives a warning message when new versions of Wyrmsun reset the allocation of technology points in the tech tree.
- Glyphs are now visible under the fog of war.
- The speed cheat ("hermes") now works (code by cybermind).
- The resource cheat now benefits all players.
- Added a button to reset the tech tree.
- Added graphics for gnomish menu buttons, also used for the main menu (graphics by Jinn).
- Added a stairs unit (graphics modified by b_o from those here: http://opengameart.org/content/dungeon-crawl-32x32-tiles)
- Added explosion impact effect graphics for siege weapon projectiles (graphics by Jinn and Cuzco).
- New background art (by Cuzco)
- Added fire effects for when buildings are damaged (graphics by Jinn and Mikodrak).
- Level-up upgrades are now in a submenu.

* Quests
- The gnomish envoy and the gnomish king in the A Bargain is Struck quest now begin at the 2nd and 3rd level of experience, respectively.
- Quest events have been reformulated to incorporate dialogues.
- Quest code has been improved.
- Added the "Searching for the Runecrafter" quest.

* Terrain
- Added Dark Dirt and Dark Grass tiles to the Forest tileset (graphics by b_o).
- Added a Dungeon tileset (graphics by b_o).
- Mushrooms now come in three new colors as well: brown, green and yellow (graphics by b_o).

* Units
- Added Goblin Archer (unit graphics by b_o and icon by Jinn).
- Leveling up now always restores HP to the max.
- Removed the display of a unit's kills, as there was not enough space for it in the interface (the numbers were appearing outside of the interface if they had too many digits).
- It is no longer possible to see an enemy unit's XP by selecting it.
- The ballista is now buildable.
- Dwarven steelclads now have graphics showing a double axe if the second dwarven melee axe upgrade has been researched (graphics by b_o).
- Added a gnomish patrol button for gnomish military units (graphics by Jinn).
- When units level up, they now have the choice of learning Critical Strike (gives a chance to cause double damage when attacking; graphics by Jinn).
- Dwarven axefighters now need a blacksmith to be built in order to upgrade to steelclads.
- New level-up upgrade: Axe Mastery (for dwarven axefighters and dwarven steelclads).
- Improved level-up upgrade code.
- Increased the armor of dwarven steelclads from 3 to 4.
- Added Gryphon (unit graphics by b_o and icon by Jinn).
- Added dwarven Gryphon Rider (unit graphics by b_o).
- Added Goblin Worker (unit graphics by b_o and icon by Jinn).

* Upgrades
- Added two melee axe upgrades for the dwarves (stone axe and great axe graphics by Leo).
- Added two shield upgrades for the dwarves (graphics by Leo).
- Changed the hotkey for the throwing axe upgrades from R to T.

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
- Player 16 (the neutral player)'s color is now gray, rather than repeating player 8's yellow (color tones suggested by Jinn).
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
(see in-game credits and the /graphics/credits.txt, /music/credits.txt and /sounds/credits.txt files)