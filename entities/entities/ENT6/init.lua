
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )
funcTime = 30
leftArea = true

function ENT:Initialize()
	self:SetTrigger(true)
end

function ENT:StartTouch(ent)
	funcTime = 30
	leftArea = false
end

function ENT:EndTouch(ent)
	leftArea = true
end

function ENT:KeyValue( key, value )
	-- body
end

function ENT:Think()
	if leftArea then
		funcTime = funcTime - 1
	end
end