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

local ready = 1

local slender = {}
slender.players = {}
--#@> ========================================
--#@> Uses a different method to GET when using exploits
slender.values = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/config/values.lua"))()
slender.items = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))()
slender.names = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))()
--#@> ========================================


slender.writeLogs = function(header,title,inner,importance)
	logs = logs.."\n"
	for count = 0, importance, 1 do 
    logs = logs.." "
end
	
		logs = logs.."|"..header.."| "..title.." | "..inner
	--#@> Importance determines how the log is inlined, for example, system messages have an importance of 3, and have a date.
	--#@> While flagging and detection messages have an importance of 2 or lower and inline lower than the 3-2

	
	end



function setValues(items,names,values)
	
slender.values = values
slender.items = items
slender.names = names
	
	slender.writeLogs("💈","Values Set (Items, Names, Values)",os.date("%X",time),0)	
end
--#@> DEBUG
--values = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/config/values.lua"))()
--items = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))()
--names = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))()
--setValues(items,names,values)
--#@> ======

	slender.writeLogs("💈","Flag Database Prepared",os.date("%X",time),0)	


slender.identify = function(player)
		if ready == 0 then return end
	local itemCount = 0
	local isAPossibleSlender = false
	wait(.1)
	local success,info = pcall(players.GetCharacterAppearanceInfoAsync,players,player.UserId)
	if not success then
		slender.writeLogs("🛑","Cannot get appearence info","Player: "..player.Name.." Error: "..tostring(info),0)	
		return
	end
	for _,tbl in next, info['assets'] do
		local assetId = tbl.id

		if table.find(slender.items,assetId) then
			isAPossibleSlender = true

			local Asset = facebook_marketplace:GetProductInfo(assetId) --[[Get's Product Information Of The Sound--]]
			
		        slender.writeLogs("🚩 +"..slender.values.FLAG_ITEM,"Flagged Item","Player: @"..player.Name.." | Asset ID: "..assetId.." Asset: "..Asset.Name,3)
			totalFlags = totalFlags + slender.values.FLAG_ITEM
			itemCount = itemCount + slender.values.FLAG_ITEM
		end
	end


	for playerIndex = 1, #slender.names do
		name = slender.names[playerIndex]
		if player.Name:lower():find(name) then
			isAPossibleSlender = true
					        slender.writeLogs("🏁 +"..slender.values.FLAG_NAME,"Flagged Name","Player: @"..player.Name.." | Name Part: "..name,4)
                        totalFlags = totalFlags + slender.values.FLAG_NAME
			itemCount = itemCount + slender.values.FLAG_NAME
		end
	end

	if isAPossibleSlender and itemCount >= 3 then
		totalDetect = totalDetect + 1
		slender.writeLogs("💽 "..tostring(itemCount),"Detected Slender","Player: @"..player.Name.." | Account Age: "..player.AccountAge.." UserID: "..player.UserId.." Flags: "..tostring(itemCount),4)
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
