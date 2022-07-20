local f = CreateFrame('FRAME')
f:RegisterAllEvents()
f:SetScript('OnEvent', function()
    
	if event == 'START_LOOT_ROLL' then
		DEFAULT_CHAT_FRAME:AddMessage('START_LOOT_ROLL: rollID = ' .. arg1)

		local res = {GetLootRollItemInfo(arg1)}
		DEFAULT_CHAT_FRAME:AddMessage('GetLootRollItemInfo:')
		if res[1] then DEFAULT_CHAT_FRAME:AddMessage('texture = ' .. res[1]) end
		if res[2] then DEFAULT_CHAT_FRAME:AddMessage('name = ' .. res[2]) end
		if res[3] then DEFAULT_CHAT_FRAME:AddMessage('count = ' .. res[3]) end
		if res[4] then DEFAULT_CHAT_FRAME:AddMessage('quality = ' .. res[4]) end
		if res[5] then DEFAULT_CHAT_FRAME:AddMessage('bindOnPickUp = ' .. res[5]) end
		if res[6] then DEFAULT_CHAT_FRAME:AddMessage('canNeed = ' .. res[6]) end
		if res[7] then DEFAULT_CHAT_FRAME:AddMessage('canGreed = ' .. res[7]) end
		if res[8] then DEFAULT_CHAT_FRAME:AddMessage('canDisenchant = ' .. res[8]) end

		local _, _, itemId = string.find(GetLootRollItemLink(arg1), "item:(%d+)")
		DEFAULT_CHAT_FRAME:AddMessage('Id from ItemLink = ' .. itemId)
	end

end)

SLASH_GF1 = '/gf'
SlashCmdList['GF'] = function()
	DEFAULT_CHAT_FRAME:AddMessage(GetMouseFocus():GetName() .. ' < ' .. GetMouseFocus():GetParent():GetName())
end
