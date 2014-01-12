-- AddCSLuaFile tells the server to send the file to the client to be run
-- The server doesn't send server-side scripts (like this file)
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
//

function GameTimer()
	timer.Create("GameLength", 600, 1, PrintGameOver)
end
hook.Add("GameEnd", "Sets game length", GameTimer)

function PrintGameOver()
	for k, ply in pairs(player.GetAll()) do
		ply:ChatPrint("The game has ended.")
	end
end
