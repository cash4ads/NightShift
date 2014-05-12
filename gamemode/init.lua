-- AddCSLuaFile tells the server to send the file to the client to be run
-- The server doesn't send server-side scripts (like this file)
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
//

function GameTimer()
	--timer for the total game length
	timer.Create("GameLength", 600, 1, PrintGameOver)
end

function EventTimer()
	--timer for the endgame item to spawn
	timer.Create("EventLength", 420, 1, PrintEventSpawn) 
end

function RespawnWaveTimer()
	--every 1 and a half minutes spawns dead guards
	--(SpawnGuards doesn't exist yet)
	timer.Create("GRespawnLength", 90, 0, SpawnGuards)
end

function SetupTimer()
	--timer for guards to get setup before infiltrator is allowed entry
	timer.Create("EventLength", 90, 1, PrintSetupEnd) 
end
hook.Add("GameEnd", "Sets game length", GameTimer)



function PrintGameOver()
	for k, ply in pairs(player.GetAll()) do
		ply:ChatPrint("The game has ended.")
	end
end

function PrintEventSpawn()
	for k, ply in pairs(player.GetAll()) do
		ply:ChatPrint("The item has spawned!")
	end
end

function PrintSetupEnd()
	for k, ply in pairs(player.GetAll()) do
		ply:ChatPrint("Setup has ended.")
	end

function assignOrders( orders )

switch[1] = "ENT1"
switch[2] = "ENT2"
switch[3] = "ENT3"
switch[4] = "ENT4"
switch[5] = "ENT5"
switch[6] = "ENT6"
switch[7] = "ENT7"
switch[8] = "ENT8"
switch[9] = "ENT9"
switch[10] = "ENT10"
switch[11] = "ENT11"
switch[12] = "ENT12"
	 

  	if switch[orders] then 
    	
  	end
end
timer.Create("OrderAssignment", 90, 0, assignOrders)
end