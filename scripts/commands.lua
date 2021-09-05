local function HandleIngameCommandKey(key, ctrl, alt, shift)
	if (key == "f8") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunPreferencesMenu()
	elseif (key == "f9") then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunDiplomacyMenu()
	elseif (key == "s" and alt) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunSaveMenu()
	elseif (key == "q" and (ctrl or alt)) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunQuitToMenuConfirmMenu()
	elseif (key == "x" and (ctrl or alt)) then
		if (not IsNetworkGame()) then SetGamePaused(true) end
		RunExitConfirmMenu()
	else
		return false
	end
	return true
end

local function HandleIneditorCommandKey(key, ctrl, alt, shift)
  if (key == "f5") then -- Map property
    RunEditorMapProperties()
  elseif (key == "f6") then -- Players property
    RunEditorPlayerProperties()
  elseif (key == "s" and alt) then -- Save
    RunEditorSaveMenu()
  elseif (key == "q" and (ctrl)) then -- Quit to menu
    RunQuitToMenuConfirmMenu()
  elseif (key == "x" and (ctrl or alt)) then -- Exit
    RunExitConfirmMenu()
  else
    return false
  end
  SetGamePaused(true)
  return true

end

function HandlewarCommandKey(key, ctrl, alt, shift)
  if (CEditor:get():is_running() == false) then
    return HandleIngameCommandKey(key, ctrl, alt, shift)
  else
    return HandleIneditorCommandKey(key, ctrl, alt, shift)
  end
end

HandleCommandKey = HandlewarCommandKey
