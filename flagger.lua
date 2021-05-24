local players = game:GetService("Players")

local facebook_marketplace = game:GetService("MarketplaceService")
local starterGui = game:GetService("StarterGui")
local resultado = "SlenderLogs = {"
local logs = "\n Operations are logged here.\n\n"

local serversize = 0
local _players = game:GetService("Players")
for i, player in pairs(_players:GetPlayers()) do
    serversize = serversize + 1
end
local totalFlags = 0
local localPlr = players.LocalPlayer
local totalDetect = 0
local totalPlayers = 0

local slender = {}
slender.players = {}

slender.items = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))()
slender.names = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))()

slender.identify = function(player)
	local itemCount = 0
	local isAPossibleSlender = false
	wait(.1)
	local success,info = pcall(players.GetCharacterAppearanceInfoAsync,players,player.UserId)
	if not success then
		logs = logs.."\n |🛑| Cannot get appearence info of "..player.Name.." || "..tostring(info).." |🛑|"
		return
	end
	for _,tbl in next, info['assets'] do
		local assetId = tbl.id

		if table.find(slender.items,assetId) then
			isAPossibleSlender = true

			local Asset = facebook_marketplace:GetProductInfo(assetId) --[[Get's Product Information Of The Sound--]]

			logs = logs.."\n   |🚩| Flagged Item | "..player.Name.." | Asset ID: "..assetId.." Asset: "..Asset.Name
			totalFlags = totalFlags + 1
			itemCount = itemCount + 1
		end
	end


	for playerIndex = 1, #slender.names do
		name = slender.names[playerIndex]
		if player.Name:lower():find(name) then
			isAPossibleSlender = true
			logs = logs.."\n    |🏁| Flagged Name | Player: @"..player.Name.." Name Flagged: "..name
		end
	end

	if isAPossibleSlender and itemCount >= 3 then
		totalDetect = totalDetect + 1
		logs = logs.."\n |💽| Detected Slender | Player: "..player.Name.." Account Age: "..player.AccountAge.." UserID: "..player.UserId.." Flags: "..tostring(itemCount)
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
logs = logs.."\n\n== Operation Logs END ==\n"


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
