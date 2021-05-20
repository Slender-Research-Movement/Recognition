local players = game:GetService("Players")

local facebook_marketplace = game:GetService("MarketplaceService")
local starterGui = game:GetService("StarterGui")

local localPlr = players.LocalPlayer
local totalDetect = 0
local totalPlayers = 0

--game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This is an online database that helps scripts and functions alike recognize -Slenders- AKA Online Daters","All")
wait(1)
--game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("We use our current data to estimate Slenders in popular genre games such as, Murder Mistery Two, and Ragdoll Engine. With our scripts, we save the best estimates in files and examine the most common data among them. ","All")

local emo = {}
emo.players = {}

emo.items = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))()
emo.names = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))()

emo.identify = function(player)
    local itemCount = 0
    local isAPossibleEmo = false
    wait(.1)
    local success,info = pcall(players.GetCharacterAppearanceInfoAsync,players,player.UserId)
    if not success then
        warn('can\'t get appearanceInfo of '..player.Name..' error info: '..tostring(info))
        return
    end
    for _,tbl in next, info['assets'] do
    	local assetId = tbl.id
  
    	if table.find(emo.items,assetId) then
    	    isAPossibleEmo = true
    	    itemCount = itemCount + 1
    	end
    end
    
 
for playerIndex = 1, #emo.names do
	name = emo.names[playerIndex]
  if player.Name:lower():find(name) then isAPossibleEmo = true end
end

    if isAPossibleEmo and itemCount >= 3 then
        totalDetect = totalDetect + 1
        starterGui:SetCore("SendNotification", {Title = player.Name.." ", Text = " Has "..tostring(itemCount).." items.", Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..player.UserId})
        emo.players[player.Name] = {
            ["Player"] = player,
            ["AccountAge"] = player.AccountAge,
	          ["UserId"] = player.UserId,
            ["EmoItemsAmount"] = tostring(itemCount)
        }
    end
end

local placeName = facebook_marketplace:GetProductInfo(game.PlaceId).Name
local textNum = 0

for _,plr in next, players:GetPlayers() do 
    emo.identify(plr)
  totalPlayers = totalPlayers + 1
    wait(0.2)
end

local resultado = "SlenderLogs = {"

for emoName,emoTbl in next, emo.players do
    resultado = resultado.."\n    [\""..emoName.."\"] = {\n        [\"Player\"] = game.Players[\""..emoName.."\"],\n        [\"ItemsAmount\"] = "..emoTbl.EmoItemsAmount..",\n        [\"AccountAge\"] = "..emoTbl.AccountAge..",\n        [\"UserId\"] = "..emoTbl.UserId..",\n   }," 
end

resultado = resultado.."\n}"
local data = {}
data.TotalSlenders = totalEmos
data.TotalPlayers = totalEmos
data.StringJson = resultado
data.placeName = placeName
return resultado
