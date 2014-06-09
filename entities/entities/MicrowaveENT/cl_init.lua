
include('shared.lua')

function ENT:Initialize()
	halo.Add({self}, Color(0, 255, 255), 5, 5, 2)
end

function ENT:Draw()
	self:DrawModel()
	
	AddWorldTip(self:EntIndex(),"Start the countdown?",0.5,self:GetPos(),self)
end

