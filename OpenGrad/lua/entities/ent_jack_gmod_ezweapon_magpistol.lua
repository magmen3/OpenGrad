﻿-- Jackarunda 2021
AddCSLuaFile()
ENT.Base = "ent_jack_gmod_ezweapon"
ENT.PrintName = "EZ Magnum Pistol"
ENT.Spawnable = true
ENT.Category = "JMod - EZ Weapons"
ENT.WeaponName = "Magnum Pistol"

---
if SERVER then
elseif CLIENT then
	--
	language.Add("", ENT.PrintName)
end
