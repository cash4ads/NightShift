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
	if(P:GetName == IN_ATTACK2) then
		disguise()
	end 
end

hook.Add("KeyPress","KeyPressHook",KeyPress)