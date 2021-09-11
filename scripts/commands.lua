local function HandleIneditorCommandKey(key, ctrl, alt, shift)
  if (key == "f5") then -- Map property
    RunEditorMapProperties()
  elseif (key == "f6") then -- Players property
    RunEditorPlayerProperties()
  elseif (key == "s" and alt) then -- Save
    RunEditorSaveMenu()
  else
    return false
  end
  SetGamePaused(true)
  return true

end

function HandlewarCommandKey(key, ctrl, alt, shift)
	if (CEditor:get():is_running()) then
		return HandleIneditorCommandKey(key, ctrl, alt, shift)
	else
		return false
	end
end

HandleCommandKey = HandlewarCommandKey
