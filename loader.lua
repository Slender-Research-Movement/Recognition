local players = game:GetService("Players")

local facebook_marketplace = game:GetService("MarketplaceService")
local starterGui = game:GetService("StarterGui")

local localPlr = players.LocalPlayer
local totalEmos = 0


game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This is an online database that helps scripts and functions alike recognize -Slenders- AKA Online Daters","All")
wait(1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("We use our current data to estimate Slenders in popular genre games such as, Murder Mistery Two, and Ragdoll Engine. With our scripts, we save the best estimates in files and examine the most common data among them. ","All")

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
        totalEmos = totalEmos + 1
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
    wait(0.2)
end

local resultado = "emos = {"

for emoName,emoTbl in next, emo.players do
    resultado = resultado.."\n    [\""..emoName.."\"] = {\n        [\"Player\"] = game.Players[\""..emoName.."\"],\n        [\"ItemsAmount\"] = "..emoTbl.EmoItemsAmount..",\n [\"AccountAge\"] = "..emoTbl.AccountAge..",\n [\"UserId\"] = "..emoTbl.UserId..",\n   }," 
end

resultado = resultado.."\n}"

function nameFile()
	if isfile("Slender Logs/Emo-Logs ("..placeName..") - "..textNum..".txt") then
        textNum = textNum+1
		nameFile()
	else
	    if isfolder("Slender Logs") then
	        		writefile("Slender Logs/Emo-Logs ("..placeName..") - "..textNum..".txt", resultado)
	      else
	          	    local folder = makefolder("Slender Logs")
            namefile()
	        end
	end
end

local BindableFunc = Instance.new("BindableFunction")
BindableFunc.OnInvoke = function(args)
    if args == "Yes!" then
		nameFile()
	end
end

starterGui:SetCore("SendNotification", {Title = "There's a total of", Text = ""..tostring(totalEmos).." emos in this server", Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..localPlr.UserId})
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There's a total of "..tostring(totalEmos).." emos in this server","All")
wait(1.5)
starterGui:SetCore("SendNotification", {Title = "Save log of Players?", Text = "You will find this in your workspace folder", Duration = 5, Callback = BindableFunc, Button1 = "Yes!", Button2 = "No"})
