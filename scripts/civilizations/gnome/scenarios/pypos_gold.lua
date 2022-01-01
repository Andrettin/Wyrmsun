if (LoadedGame == false) then
	SetPlayerData(0, "RaceName", "gnome")
	SetPlayerData(0, "Faction", "untersberg")
	SetPlayerData(1, "RaceName", "dwarf")
	SetPlayerData(1, "Faction", "random")
	
	unit = CreateUnit("unit-gnomish-master-at-arms", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Character", "pypo")

	unit = CreateUnit("unit-dwarven-yale-rider", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")}) -- dwarven noble
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-dwarven-witness", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")}) -- old wise and faithful steward to the dwarven noble
	SetUnitVariable(unit, "Active", false)
	AcquireTrait(unit, "upgrade-old")
	
	SetTimeOfDay("dusk") -- the scenario happens in a gloomy evening in Autumn
end

RemovePlayerObjective(GetFactionPlayer("Untersberg"), "- Defeat your rivals")

AddTrigger("pypos-gold-victory",
	function()
		if (GetNumRivals(GetThisPlayer()) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionVictory()
		if (player == GetThisPlayer()) then
			SetQuestCompleted("pypos-gold", GameSettings.Difficulty)
		end
		return false
	end
)

AddTrigger("pypos-gold-pypo-dies",
	function()
		if (PlayerHasObjective(GetThisPlayer(), "- Pypo must survive") and FindHero("pypo", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionDefeat()
		return false
	end
)
