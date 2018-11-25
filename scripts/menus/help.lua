function RunHelpMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel(_("Help Menu"), 128, 11)
  menu:addFullButton(_("En~!cyclopedia"), "c", 16, 40 + 36*0,
    function() RunEncyclopediaMenu() end)
  menu:addFullButton(_("~!Hotkeys"), "h", 16, 40 + 36*1,
    function() RunKeystrokeHelpMenu() end)
--  menu:addFullButton("~!Tips", "t", 16, 40 + 36*1,
--    function() RunTipsMenu() end)
  menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape", 128 - (224 / 2), 248,
    function() menu:stop() end)

  menu:run(false)
end

local keystrokes = {
--  {"Alt-B", "- toggle expand map"},
  {"Alt-C", "- center on selected unit"},
  {"Alt-F", "- toggle full screen"},
  {"Alt-G", "- toggle grab mouse"},
  {"Alt-H", "- help menu"},
  {"Alt-I", "- find idle worker"},
  {"Ctrl-L", "- return to previous map layer"},
  {"Alt-M", "- game menu"},
  {"Ctrl-M", "- mute music"},
  {"Ctrl-P", "- pause game"},
  {"Alt-Q", "- select entire army"},
  {"Ctrl-Q", "- quit to main menu"},
  {"Alt-R", "- restart scenario"},
  {"Ctrl-S", "- mute sound"},
  {"Ctrl-T", "- track unit"},
  {"Alt-V", "- next view port"},
  {"Ctrl-V", "- previous view port"},
  {"Alt-W", "- select all visible units of the same type as the currently selected one"},
  {"Alt-WW", "- select all units of the same type as the currently selected one"},
  {"Alt-X", "- quit game"},
  {"+", "- increase game speed"},
  {"-", "- decrease game speed"},
  {"PAUSE", "- pause game"},
  {"PRINT", "- make screen shot"},
  {"ENTER", "- write a message"},
  {"SPACE", "- goto last event"},
  {"TAB", "- hide/unhide terrain"},
  {"^", "- select nothing"},
  {"#", "- select group"},
  {"##", "- center on group"},
  {".", "- find idle worker"},
  {"Ctrl-#", "- define group"},
  {"Shift-#", "- add to group"},
  {"Alt-#", "- add to alternate group"},
  {".", "- select next idle worker"},
  {"F2-F4", "- recall map position"},
  {"Shift F2-F4", "- save map postition"},
  {"F5", "- game options"},
  {"F7", "- sound options"},
  {"F8", "- speed options"},
  {"F9", "- preferences"},
  {"F10", "- game menu"},
  {"BACKSPACE", "- game menu"},
  {"F11", "- save game"},
  {"F12", "- load game"},
}

function RunKeystrokeHelpMenu()
  local menu = WarGameMenu(panel(5))
  menu:resize(352, 352)

  local c = Container()
  c:setOpaque(false)

  for i=1,table.getn(keystrokes) do
    local l = Label(keystrokes[i][1])
    l:setFont(Fonts["game"])
    l:adjustSize()
    c:add(l, 0, 20 * (i - 1))
    local l = Label(keystrokes[i][2])
    l:setFont(Fonts["game"])
    l:adjustSize()
    c:add(l, 80, 20 * (i - 1))
  end

  local s = ScrollArea()
  c:setSize(320 - s:getScrollbarWidth(), 20 * table.getn(keystrokes))
  s:setBaseColor(dark)
  s:setBackgroundColor(dark)
  s:setForegroundColor(clear)
  s:setSize(320, 216)
  s:setContent(c)
  menu:add(s, 16, 60)

  menu:addLabel(_("Hotkey Menu"), 352 / 2, 11)
  menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape",
    (352 / 2) - (224 / 2), 352 - 40, function() menu:stop() end)

  menu:run(false)
end

local tips = {
	"You can select all of your currently visible units of the same type by holding down the CTRL key and selecting a unit or by double-clicking on a unit.",
	"The more workers you have collecting resources, the faster your economy will grow.",
	"Building more than one barracks will let you train units faster.",
	"Use your workers to repair damaged buildings.",
	"Explore your surroundings early in the game.",

	"Keep all workers working. Use ALT-I to find idle workers.",
	"You can make units automatically cast spells by selecting a unit, holding down CTRL and clicking on the spell icon. CTRL click again to turn off.",

	-- Shift tips
	"If you hold the SHIFT key, you can give a unit an order which is executed after it finishes the current one.",
	"You can give waypoints to units if you press the SHIFT key and then right-click for the move command.",
	"You can order a worker to build one building after the other if you hold the SHIFT key while you place the building.",
	"You can build the same building many times if you hold the ALT and SHIFT keys while you place the structures.",

	"Use CTRL-V or ALT-V to cycle through the viewport configuration, you can then monitor your base and lead an attack.",

--	"Attack a chest to open it.",

	-- Unit type-related tips
	"Unlike the dwarves, humans and goblins have no flying rider unit. Their archers have a bonus against flying units, however.",
	"It is not safe to get close to a goblin war machine.",
	"Spearmen deal extra damage to mounted units.",
	"Organic ranged units can shoot from within towers, strongholds and transport ships, with extra range.",
	"Cavalry units have a charge bonus, dealing extra damage depending on the number of tiles traversed before attacking.",

	-- Building-related tips
	"Temples regenerate the health of nearby organic units.",
	"Severely burning buildings keep losing health if left unrepaired.",
	"Build roads between mines and town halls to speed up resource gathering.",
	
	-- Technology-related tips
	"Researching a Writing upgrade will allow your faction to advance from a tribal one to a polity.",
	
	-- Leveling-related tips
	"Organic units can level up.",
	"When a unit levels up, an exclamation point appears over it, and it can upgrade to a new unit type or learn new abilities.",
	"Persistent heroes will carry over their experience level, items and abilities across scenarios and game modes.",
	
	-- Resource-related tips
	"Cave walls can be harvested for stone.",
	"You can build gold mines on top of gold deposits.",
	"Silver and gold are converted into copper when delivered, at a rate of 200% and 400%, respectively.",
	"Iron and mithril are converted into copper when delivered, at a rate of 100% and 800%, respectively. In order to harvest them, the Ironworking technology is required.",
	"If a worker unit is stuck between trees or rocks, it will drop the resources it is carrying to be able to harvest more and escape.",
	
	-- Fauna-related tips
--	"Yales are territorial creatures.",
	"Wild gryphons are dangerous predators.",
	"There is a chance animals will escape from destroyed stables or pens.",
	
	-- Item-related tips
	"Potions of healing and food items can be used by damaged units to heal themselves. Right-click on those items to pick them up.",
	"Healing items in a unit's inventory are automatically used if the unit's health is too low.",
	"Persistent heroes can carry items, and the same applies to regular level 3 organic units.",
	"AI buildings and unique units drop items when killed.",
	"The chance a unique unit will drop a magic or unique item depends on its level.",
--	"Magic and unique buildings have a higher chance of dropping magic and unique items.",

	"Thieves deal bonus damage when attacking from the back.",
	"Fire damage ignores armor.",
--	"Each mercenary group can only be hired once per game.",
	"Time efficiency bonus makes a building train, research and upgrade faster. If it is a resource building, then harvesting from it will also proceed faster."
}

LoadingBarSetTips(tips)

function RunTipsMenu()
  local menu = WarGameMenu(panel(2))
  menu:resize(288, 256)

  menu:addLabel(_("Tips"), 144, 11)

  local l = MultiLineLabel()
  l:setFont(Fonts["game"])
  l:setSize(260, 128)
  l:setLineWidth(260)
  menu:add(l, 14, 35)

  function l:prevTip()
    wyr.preferences.TipNumber = wyr.preferences.TipNumber - 1
    if (wyr.preferences.TipNumber < 1) then
      wyr.preferences.TipNumber = table.getn(tips)
    end
    SavePreferences()
  end
  function l:nextTip()
    wyr.preferences.TipNumber = wyr.preferences.TipNumber + 1
    if (wyr.preferences.TipNumber > table.getn(tips)) then
      wyr.preferences.TipNumber = 1
    end
    SavePreferences()
  end
  function l:updateCaption()
    self:setCaption(tips[wyr.preferences.TipNumber])
  end

  if (wyr.preferences.TipNumber == 0) then
    l:nextTip()
  end
  l:updateCaption()

  local showtips = {}
  showtips = menu:addImageCheckBox(_("Show tips when starting"), 14, 256 - 75,
    function()
      wyr.preferences.ShowTips = showtips:isMarked()
      SavePreferences()
    end)
  showtips:setMarked(wyr.preferences.ShowTips)

  menu:addHalfButton(_("~!Next Tip"), "n", 14, 256 - 40,
    function() l:nextTip(); l:updateCaption() end)
  menu:addHalfButton(_("~!Close"), "c", 168, 256 - 40,
    function() l:nextTip(); menu:stop() end)

  menu:run(false)
end

