prevItem = nil

function DisplayItemID(self)
	if GameTooltip:GetItem() then
		itemName, itemLink = GameTooltip:GetItem()
		s1, itemID = strsplit(":",
                             string.match(itemLink, "item[%-?%d:]+"))
		GameTooltip:AddDoubleLine("ItemID:",itemID)
		GameTooltip:Show()
	end
end

GameTooltip:HookScript("OnShow", DisplayItemID)