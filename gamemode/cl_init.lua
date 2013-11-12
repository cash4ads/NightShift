include("shared.lua")
//
function GM:KeyPress()
	if input.IsKeyDown(KEY_H) then
		net.Start("ChangePlayerModel")
		net.SendToServer()
	end
end