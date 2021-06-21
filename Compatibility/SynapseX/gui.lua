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




local w1 = library:Window('Results') -- Text

w1:Button('Print Logs', function()
    print(result.StringLogs)
end) -- Text, Callback


w1:Label(result.TotalPlayers.. " Players") -- Text
w1:Label(result.TotalSlenders.. " Slenders") -- Text
w1:Label(result.TotalFlags.. " Flags") -- Text


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
	      else
	          	    local folder = makefolder("Slender Logs")
            namefile()
	        end
	end
end


--[[--]]
starterGui:SetCore("ChatWindowSize",{windowSize = UDim2.new(0.5,0,1,0)})
w1:Button('Save Results', function()
		nameFile()
end) -- 
w1:Button('Display Logs in Chat', function()
starterGui:SetCore("ChatMakeSystemMessage",{Text = result.StringLogs, Font = Enum.Font.Ubuntu})
end) -- 
--w1:Button('Delete GUI', function()
 --   wi:Destroy()
--end) -- Text, Callback

wait(1.5)
