AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" ) 
include('shared.lua')
 
function ENT:Initialize()
 
	self:SetModel( "models/props_lab/monitor01b.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )     
	self:SetMoveType( MOVETYPE_VPHYSICS )   
	self:SetSolid( SOLID_VPHYSICS )      
 
        local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
	--standard physics settings for SENTs
end

function endGame()

end
 
local prevPlayerClass
function ENT:Use( activator, caller )
    if (activator:IsPlayer()) then
		if(activator:GetNWString('class') ~= prevPlayerClass) then
			if activator:GetNWString('class') == "player_snake" then --if the user is an Infiltrator
				if timer.Exists("Infiltrator control") then
					timer.UnPause("Infiltrator control")
				else
		 			timer.Create("Infiltrator control",1,250, endGame ) --ends the game
				end 
			elseif timer.Exists("Infiltrator control") then
				timer.Pause("Infiltrator control")
			end
		end 
    end 
	prevPlayerClass = activator:GetNWString('class')
end
 
function ENT:Think()

end