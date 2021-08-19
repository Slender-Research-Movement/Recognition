--[[
                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                     ---                                                                                                             ----  --                                           
                                   =@@@@@=-              -==-                                                                                    -=-=@@@@@@@@=======-                                   
                                 -@@@@@@@@@=-            --=-                                                                                    ---=@@@@@@@@=======-                                   
                                 =@@@@@@@@@@@@==-        -==-                                                                                    -=-=@@@@@@@@@@@@@@@=                                   
                                  -=@@@@@@@@@@@@@=-      -==-                                                                                    =@@@@@@@@@@@@@@@@@@=                                   
                                    -=@@@@@@@@@@@@@@=-   -==-                                                                                   -@@@@@@@@@@@=                                           
                                       -@@@@@@@@@@@@@@=-  -=-                                                                                 -=@@@@@@@@@@@=-  ------                                   
                                     -==@@@@@@@@@@@@@@@@@@=-                                                                                 =@@@@@@@@@@@@===--===@@-                                   
                                   -=@@@@@@==-=@@@@@@@@@@@@@=-                                                                             -=@@@@@@@@@@====---======-                                   
                                   =@@@@@@@@@==-=@@@@@@@@@@@@@=                                                                          -@@@@@@@@@@@@==-=---=======-                                   
                                 =@@@@@@@@@@@@@@=-==@@@@@@@@@@=                                                                         -@@@@@@@@@@@=====-==@@@@@@@@-                                   
                                  -=@@@@@@@@@@@@@@==-==@@@@@@@=                                                                        =@@@@@@@@@@=-----==@@@@@@@@@@-                                   
                                   -=@@@@@@@@@@@@@@@@=- -=@@@@=                                                                        =@@@@@@@@@=----=@@@@@@@@@@@=@-                                   
                                   --@@@@@@@@@@@@@@@@@@=- -=@@=                                                                        =@@@@@@@-----=@@@@@@@@@@@@@@@-                                   
                                 -=---=@@@@@@@@@@@@@@@@@=    =-                                                                        =@@@@@=-  -=@@@@@@@@@@@@@@@@@=                                   
                                       -=@@@@@@@@@@@@@@@-                                                                              =@@@=-  -=@@@@@@@@@@@@@@@@@@@=                                   
                                       -======@@@@======-                                                                              =@=-  -=@@@@@@@@@@@@@@@@@@@@@=                                   
                                       -================-                                                                                     -@@@@@@@@@@@@@@-------                                    
                                       -================-                                                                              -----=-===@@@@@@@@@@-                                            
                                         -==============-                                                                            -==============-----==                                             
                                             -------                                                                               -=====-----==-                                                       
                                                                                                                                   -=====-----==-                                                       
                                                                                                                                   -============-                                                       
                                                                                                                                   -============-                                                       
                                                                                                                                   -=======------                                                       
                                                                                                                               -=========--                                                             
                                                                                                                             -=========-                                                                
                                                                                                                             -=======-                                                                  
                                                                                                                               -=====                                                                   
                                                                                                                               -=====                                                                   
                                                                                                                               -=====                                                                   
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                            -==---           ---  ---=--   --==---  ----------==--------    ---==--------- ---------   ----                                                             
                                           -=@@@=------------==----=@@=-- -=@@@@=----==@=====@@@@@@@@@@=-- --=@@@@==-===@=-========-- -=@=-----------                                                   
                                           -=@@@=------------------=@@=-- -==@@@======@@@@==@@@@@@@@@@@@@=--==@@@@=---====-========-- -=@=-----------                                                   
                                           -=@@@=-----------=====--==@==--==@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@========--=======--  =@=-----------                                                   
                                           -=@@=====-----==@@@@@@@==@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@==========---==@=--  -   --                                                    
                                           -=@@==@@@@====@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=======@@@@===========-                                                   
                                           -=@@==@@@@===@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=                                                   
                                           -=@@===@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=--====                                                   
                                           -=@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@===========@@@@@@@@@@@@@@@==@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@==--====                                                   
                                           -=@@@@@@@@@@@@@@@@@@@@@@@@@@@@=----==@@@===========@@@@@@@@@@@@@=----==@@@@==@@@@@@@@@@@@@@@@@@@@@@@======                                                   
                                           -=@@@@@@@@@@@@@@@@@@@@@@@@@@@=-   -==@@@===============@@@@@=====----==@@@=---=@@@@@@@@@@@@@@@@@@@@@@@@@=-                                                   
                                           -=@@@@@@@@@@@@==@@@@@@@@@@@==-    --=@@@===============@@@@@=====----==@@@=---=@@@@@@@@@@@@@@@@@@@@@@@@@@=                                                   
                                            -=@@@@@====@@==@@=====@@@=-      --=@@@===============@@@@@=====----==@@@=----====@@@@@@@@=@@@@@@@@@@@@@=                                                   
                                            -@@===@@@==@@==@@@===@@@@=--     -=@@@@====@@@========@@@@@=====----=@@@@=--------=@@@@====@@@=@@@@@@@@@=                                                   
                                             ----------------------=--        --==-----------------===------    ------       -----     -=----==------                                                   
                                                                                                                                                                                                        
                                                                                                                                                                                                        
--]]

--[[
'gui.lua' was made specifically for exploits. Synapse X in particular. This uses a different version of 'flagger.lua' as to be runned from exploit bytecode.
--]]
local starterGui = game:GetService("StarterGui")
local library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/Compatibility/SynapseX/Gui_Script.lua'))()

local localPlr = game.Players.LocalPlayer
starterGui:SetCore("SendNotification", {Title = "Loading flagger.lua", Text = "Please wait a few seconds", Icon = "rbxassetid://6846191221"})
starterGui:SetCore("ChatMakeSystemMessage",{Text = "== Loading module ==", Font = Enum.Font.Ubuntu})
--local w2 = library:Window('Scanning...') -- Text

local result = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flagger.lua"))()
--values = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/config/values.lua"))()
--items = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/items.lua"))()
--names = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Slender-Research-Movement/Recognition/main/flags/names.lua"))()
--w2:Destroy()




local Window = library:AddWindow(result.placeName.."  -  Slender Scan Results", {
  main_color = Color3.fromRGB(28, 73, 238),
  min_size = Vector2.new(500, 600),
  toggle_key = Enum.KeyCode.RightShift,
  can_resize = true,
})
local Stats = Window:AddTab("Stats")


Stats:AddLabel(result.TotalPlayers.. " Players") -- Text
Stats:AddLabel(result.TotalSlenders.. " Slenders") -- Text
Stats:AddLabel(result.TotalFlags.. " Flags") -- Text
local HA = Stats:AddHorizontalAlignment()
HA:AddButton('Print Logs', function()
  print(result.StringLogs)
end) -- Text, Callback


--setValues(items,names,values)
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

local textNum = 0
function nameFile()
	if isfile("Slender Logs/Emo-Logs ("..result.placeName..") - "..textNum..".txt") then
        textNum = textNum+1
		nameFile()
	else
	    if isfolder("Slender Logs") then
	        		writefile("Slender Logs/Emo-Logs ("..result.placeName..") - "..textNum..".txt", resultado)
              starterGui:SetCore("SendNotification", {Title = "File Saved", Text = "Slender Logs/Emo-Logs ("..result.placeName..") - "..textNum..".txt", Icon = "rbxassetid://6846191221"})
	      else
	          	    local folder = makefolder("Slender Logs")
            namefile()
	        end
	end
end


--[[--]]
starterGui:SetCore("ChatWindowSize",{windowSize = UDim2.new(0.5,0,1,0)})
HA:AddButton('Save Results', function()
		nameFile()
end) -- 
HA:AddButton('Display Logs in Chat', function()
starterGui:SetCore("ChatMakeSystemMessage",{Text = result.StringLogs, Font = Enum.Font.Ubuntu})
end)

local SLogs = Window:AddTab("Logs")
local SlLogs = SLogs:AddConsole({
  ["y"] = 500,
  ["source"] = "Logs",
  ["readonly"] = true,
})
SlLogs:Set(resultado)
--w1:Button('Delete GUI', function()
 --   wi:Destroy()
--end) -- Text, Callback

wait(1.5)
