AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" ) 
include('shared.lua')
 
function ENT:Initialize()
 
	self:SetModel( "models/props_interiors/toaster.mdl" )
-- this sENT uses a toaster model
	self:PhysicsInit( SOLID_VPHYSICS )     
	self:SetMoveType( MOVETYPE_VPHYSICS )   
	self:SetSolid( SOLID_VPHYSICS )      
 
        local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
	--standard physics settings for SENTs
end
 
local prevPlayerClass
function ENT:Use( activator, caller )
    if (activator:IsPlayer()) then
	if(activator:GetClass() ~= prevPlayerClass) then
		if(activator:GetClass() == "player_snake" then --if the user is an Infiltrator
			if (isValid("Infiltrator control") then
				timer:UnPause("Infiltrator control")
			else
	 			timer:Create("Infiltrator control",1,250, endGame ) --ends the game
			end 
		else
			timer:Pause("Infiltrator control")
		end
	end 
    end 
prevPlayerClass = activator:getClass()
end
 
function ENT:Think()

end