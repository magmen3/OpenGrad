
TOOL.Category = wac.menu.category
TOOL.Name = "Entity Linker"
TOOL.Command = nil
TOOL.ConfigName = ""

if CLIENT then
	language.Add("tool.wac_linker.name", "Entity Linker")
	language.Add("tool.wac_linker.desc", "Link WAC entities")
	language.Add("tool.wac_linker.0", "Click on the entity you want to link")
	language.Add("tool.wac_linker.1", "Now click on the second entity, or press R to clear.")
	language.Add("tool.wac_linker.2", "That didn't work.")
end

function TOOL:reload(b)
	self:SetStage(b and 0 or 2)
	self = nil
	return b
end

function TOOL:LeftClick(tr)
	if tr.Hit and IsValid(tr.Entity) then
		if not self then
			self = tr.Entity
			self:SetStage(1)
			return true
		else
			if self.wacLink then
				return self:reload(self:wacLink(tr.Entity))
			elseif tr.Entity.wacLink then
				return self:reload(tr.Entity:wacLink(self))
			else
				return self:reload(false)
			end
		end
	end
end

function TOOL:Reload(tr)
	self:SetStage(0)
	self = nil
	return false
end
