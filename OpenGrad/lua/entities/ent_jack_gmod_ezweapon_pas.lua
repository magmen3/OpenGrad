﻿-- Jackarunda 2021
AddCSLuaFile()
ENT.Base = "ent_jack_gmod_ezweapon"
ENT.PrintName = "EZ Pump-Action Shotgun"
ENT.Spawnable = true
ENT.Category = "JMod - EZ Weapons"
ENT.WeaponName = "Pump-Action Shotgun"

---
if SERVER then
elseif CLIENT then
	--
	language.Add("", ENT.PrintName)
end
