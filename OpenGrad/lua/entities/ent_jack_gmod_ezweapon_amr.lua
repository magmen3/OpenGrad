﻿-- Jackarunda 2021
AddCSLuaFile()
ENT.Base = "ent_jack_gmod_ezweapon"
ENT.PrintName = "EZ Anti-Materiel Rifle"
ENT.Spawnable = true
ENT.Category = "JMod - EZ Weapons"
ENT.WeaponName = "Anti-Materiel Rifle"

---
if SERVER then
elseif CLIENT then
	--
	language.Add("", ENT.PrintName)
end
