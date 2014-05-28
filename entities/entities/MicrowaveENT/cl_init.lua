
include('shared.lua')

function ENT:Draw()

	self:DrawEntityOutline(1.0)
	self:DrawModel()
	
	AddWorldTip(self:EntIndex(),"Start the countdown?",0.5,self:GetPos,self)
end

