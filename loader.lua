local starterGui = game:GetService("StarterGui")

local localPlr = game.Players.LocalPlayer
starterGui:SetCore("SendNotification", {Title = "Loading flagger.lua", Text = "Please wait a few seconds", Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..localPlr.UserId})

local result = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flagger.lua"))()
local resultado = "== DATA PRINTED FROM 'flagger.lua' ==\n"
resultado = resultado .. "Place Name: ".. result.placeName .." \n"
resultado = resultado .. "Total Players: ".. tostring(result.TotalPlayers) .. " \n"
resultado = resultado .. "Total Slenders: "..  tostring(result.TotalSlenders) .. " \n"
resultado = resultado .. "Total Flags: "..  tostring(result.TotalFlags) .." \n"
resultado = resultado .. "Slender/Players: "..  tostring(result.TotalSlenders) .."/"..  tostring(result.TotalPlayers).." \n"
resultado = resultado .. "\n\n == DETECTED SLENDERS == \n\n"
resultado = resultado .. result.StringJson
resultado = resultado .. "\n\n == END == \n\n"
resultado = resultado .. "\n\n == OPERATION LOGS == \n\n"
resultado = resultado .. result.StringLogs
resultado = resultado .. "\n\n == END == \n\n"
print(resultado)
local textNum = 0
function nameFile()
	if isfile("Slender Logs/Emo-Logs ("..result.placeName..") - "..textNum..".txt") then
        textNum = textNum+1
		nameFile()
	else
	    if isfolder("Slender Logs") then
	        		writefile("Slender Logs/Emo-Logs ("..result.placeName..") - "..textNum..".txt", resultado)
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

starterGui:SetCore("SendNotification", {Title = "There's a total of", Text = ""..result.TotalSlenders.." emos in this server", Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..localPlr.UserId})
--game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There's a total of "..tostring(totalEmos).." emos in this server","All")
wait(1.5)
starterGui:SetCore("SendNotification", {Title = "Save log of Players?", Text = "You will find this in your workspace folder", Duration = 20, Callback = BindableFunc, Button1 = "Yes!", Button2 = "No"})
