
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.Radius = 500

function ENT:Initialize()
	self:SetModel("models/props_vehicles/generatortrailer01.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:NextThink(CurTime())
end

function ENT:Think()
	for _, e in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
		if e.Aerodynamics and e.maintenance then
			e:maintenance()
		end
	end
	self:NextThink(CurTime()+1)
	return true
end
