﻿-- Jackarunda 2021
AddCSLuaFile()
ENT.Base = "ent_jack_gmod_ezweapon"
ENT.PrintName = "EZ Big Iron"
ENT.Spawnable = false -- disabled until after econ phase 1
ENT.Category = "JMod - EZ Weapons"
ENT.WeaponName = "Big Iron"

---
if SERVER then
elseif CLIENT then
	--
	language.Add("", ENT.PrintName)
end
