local players = game:GetService("Players")
local time = os.time()
local http = game:GetService("HttpService")
local facebook_marketplace = game:GetService("MarketplaceService")
local starterGui = game:GetService("StarterGui")
local resultado = "SlenderLogs = {"
local logs = "\n Operations are logged here.\n\n"

local _players = game:GetService("Players")
local serversize = #_players:GetPlayers()

local totalFlags = 0
local localPlr = players.LocalPlayer
local totalDetect = 0
local totalPlayers = 0

local slender = {}
slender.players = {}

slender.values = require(http:GetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/config/values.lua"))
slender.items = require(http:GetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))
slender.names = require(http:GetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))
logs = logs.."\n|💈| Flag Database Prepared | "..os.date("%X",time)

slender.identify = function(player)
	local itemCount = 0
	local isAPossibleSlender = false
	wait(.1)
	local success,info = pcall(players.GetCharacterAppearanceInfoAsync,players,player.UserId)
	if not success then
		logs = logs.."\n |🛑| Cannot get appearence info of "..player.Name.." || "..tostring(info).." |🛑| "..os.date("%X",time)
		return
	end
	for _,tbl in next, info['assets'] do
		local assetId = tbl.id

		if table.find(slender.items,assetId) then
			isAPossibleSlender = true

			local Asset = facebook_marketplace:GetProductInfo(assetId) --[[Get's Product Information Of The Sound--]]

			logs = logs.."\n   |🚩 +"..slender.values.FLAG_ITEM.."| Flagged Item | "..player.Name.." | Asset ID: "..assetId.." Asset: "..Asset.Name
			totalFlags = totalFlags + slender.values.FLAG_ITEM
			itemCount = itemCount + slender.values.FLAG_ITEM
		end
	end


	for playerIndex = 1, #slender.names do
		name = slender.names[playerIndex]
		if player.Name:lower():find(name) then
			isAPossibleSlender = true
			logs = logs.."\n    |🏁 +"..slender.values.FLAG_NAME.."| Flagged Name | Player: @"..player.Name.." Name Flagged: "..name
			totalFlags = totalFlags + slender.values.FLAG_NAME
			itemCount = itemCount + slender.values.FLAG_NAME
		end
	end

	if isAPossibleSlender and itemCount >= 3 then
		totalDetect = totalDetect + 1
		logs = logs.."\n |💽 "..tostring(itemCount).."| Detected Slender | Player: "..player.Name.." Account Age: "..player.AccountAge.." UserID: "..player.UserId.." Flags: "..tostring(itemCount)
		slender.players[player.Name] = {
			["Player"] = player,
			["AccountAge"] = player.AccountAge,
			["UserId"] = player.UserId,
			["Flags"] = tostring(itemCount)
		}
	end
end

local placeName = facebook_marketplace:GetProductInfo(game.PlaceId).Name
local textNum = 0

for _,plr in next, players:GetPlayers() do 
	slender.identify(plr)
	totalPlayers = totalPlayers + 1
	wait(0.2)
end


for emoName,slenderList in next, slender.players do
	resultado = resultado.."\n    [\""..emoName.."\"] = {\n        [\"Player\"] = game.Players[\""..emoName.."\"],\n        [\"Flags\"] = "..slenderList.Flags..",\n        [\"AccountAge\"] = "..slenderList.AccountAge..",\n        [\"UserId\"] = "..slenderList.UserId..",\n   }," 
end
logs = logs.."\n\n======= | 🎌 END OF LOGS 🎌 | =======\n"


function recursiveToString(object)
	if typeof(object) == "table" then
		local str = "{\n"
		for i,v in pairs(object) do
			if typeof(i) == "string" then
				str = str .. i .. " = "
			else
				str = str .. "[" .. tostring(i) .. "] = "
			end

			str = str .. tostring(v) .. ",\n"
		end
		str = str .. "}"
		return str
	else
		return tostring(object)
	end
end

function recursivePrint(object)
	print(recursiveToString(object))
end

resultado = resultado.."\n}"
local data = {}
data.SlenderTable = slenderList
data.TotalSlenders = totalDetect
data.TotalFlags = totalFlags
data.TotalPlayers = serversize
data.StringJson = resultado
data.StringLogs = logs
data.placeName = placeName

return data
