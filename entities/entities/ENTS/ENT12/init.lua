
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
	if (leftArea = true) then
		funcTime = funcTime - 1;
	end
end
for k, v in pairs(player.GetAll()) do
	v:SetNWInt('orders', math.random(12))
end

--calls 'orders' variable from each player
for k, v in pairs(player.GetAll()) do
	v:GetNWInt('orders')
	assignOrders(orders)


	
end