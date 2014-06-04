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
	
--Infiltrator disguise method
function disguise()
	local ply = LocalPlayer()
	local trace = util.GetPlayerTrace( ply )
	local traceRes = util.TraceLine( trace )
	if traceRes.HitNonWorld then
		local target = traceRes.Entity
		if target:IsPlayer() then
			local targetModel = target:GetModel
			ply:SetModel(targetModel)
		end
	end
end
function KeyPressed(P,key)
	if(key == IN_ATTACK2) then
		disguise()
	end 
end

hook.Add("KeyPress","KeyPressHook",KeyPress)

function assignOrders( orders )

	if math.abs(orders - 6) < 6 then	
  		if switch["ENT"...orders] then 
    		
  		end
	end 
end
timer.Create("OrderAssignment", 90, 0, assignOrders)
end