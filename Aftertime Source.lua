getgenv().Key = "AftertimeWinning"

if getgenv().Key == "AftertimeWinning" then
grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.__namecall
grm.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(args[1]) == "TeleportDetect" then
        return
    elseif tostring(args[1]) == "CHECKER_1" then
        return
    elseif tostring(args[1]) == "CHECKER" then
        return
    elseif tostring(args[1]) == "GUI_CHECK" then
        return
    elseif tostring(args[1]) == "OneMoreTime" then
        return
    elseif tostring(args[1]) == "checkingSPEED" then
        return
    elseif tostring(args[1]) == "BANREMOTE" then
        return
    elseif tostring(args[1]) == "PERMAIDBAN" then
        return
    elseif tostring(args[1]) == "KICKREMOTE" then
        return
    elseif tostring(args[1]) == "BR_KICKPC" then
        return
    elseif tostring(args[1]) == "BR_KICKMOBILE" then
        return
    end
    return old(self, ...)
end)

local plr = game.Players.LocalPlayer
local rs = game:GetService("RunService")

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ido1212/Esp/main/ESPPP.lua"))()
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/wdndunwubfiuebsbfiwebdiuwabdiwud/TopGMate/main/topdwdwda.lua'))()
local Window = Library:New({Name = "sex", Size = Vector2.new(650, 350), Accent = Color3.fromRGB(17, 116, 200)})

loadstring(game:HttpGet'https://raw.githubusercontent.com/Ido1212/nledit/main/sas.lua')()
DaHoodSettings.SilentAim = false
DaHoodSettings.AimLock = false
DaHoodSettings.Prediction = 0
Aiming.TargetPart = {}
Aiming.FOV = 0
Aiming.FOVSides = 0
Aiming.HitChance = 0
Aiming.ShowFOV = false

Window:Watermark()
Window:KeybindsList()
Window:NotificationList()

local Legit = Window:Page({Name = "legit"})
local Misc = Window:Page({Name = "misc"})
local Visuals = Window:Page({Name = "visuals"})
local Lua = Window:Page({Name = "lua"})
local Settings = Window:Page({Name = "settings"})

local LegitBot = Legit:Section({Name = "silent-aim", Side = "Left"})
local AntiAim = Legit:Section({Name = "anti-aim", Side = "Right"})

local CFrameMisc = Misc:Section({Name = "cframe", Side = "Right"})
local MainMisc = Misc:Section({Name = "misc", Side = "Left"})

local VisualsPlayers = Visuals:Section({Name = "player esp", Side = "Left"})
local VisualsWorld = Visuals:Section({Name = "world", Side = "Right"})

local LuaMain = Lua:Section({Name = "luas", Side = "Left"})

--\\Legit//--
LegitBot:Toggle({
    Name = "enabled",
    Default = false,
    Pointer = "AimbotMain_Enabled",
    Callback = function(Value)  
        DaHoodSettings.SilentAim = Value
    end
})

    
LegitBot:Slider({Name = "prediction",
Minimum = 0,
Maximum = 1,
Default = 0.111,
Decimals = 0.01,
Pointer = "yes",
Callback = function(Value)
  DaHoodSettings.Prediction = Value
end  
})




LegitBot:Dropdown({Name = "aimpart",
Options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperArm", "RightUpperArm", "RightLowerLeg", "LeftLowerLeg", "All"},
Default = "Head",
Pointer = "gdsfgsdg",
Callback = function(Value)
    if Value == "All" then
Aiming.TargetPart = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftLowerLeg"}
end
    Aiming.TargetPart = Value
end
})

LegitBot:Toggle({
    Name = "show fov",
    Default = false,
    Pointer = "hrdhD",
    Callback = function(Value)  
        Aiming.ShowFOV = Value
    end
})


LegitBot:Slider({Name = "fov size",
Minimum = 0,
Maximum = 400,
Default = 20,
Decimals = 1,
Pointer = "posaaa",
Callback = function(Value)
  Aiming.FOV = Value
end  
})


LegitBot:Slider({Name = "fov sides",
Minimum = 0,
Maximum = 400,
Default = 400,
Decimals = 1,
Pointer = "pgdsgda",
Callback = function(Value)
  Aiming.FOVSides = Value
end  
})



LegitBot:Slider({Name = "hitchance",
Minimum = 1,
Maximum = 100,
Default = 50,
Decimals = 1,
Pointer = "pgsfhbshgbs",
Callback = function(Value)
  Aiming.HitChance = Value
end  
})



--\\End//--




--\\Rage//--
getgenv().FakeLag = false
getgenv().ticktime = 0
getgenv().ControlAnti = false
getgenv().ControlType = "Sky"



AntiAim:Toggle({
    Name = "fake-lag",
    Default = false,
    Pointer = "hgdsgbvdf",
    Callback = function(Value)  
local LocalPlayer = game.Players.LocalPlayer
local network = game:GetService("RunService")










getgenv().FakeLag = Value









while getgenv().FakeLag do
    wait()
    local loop = network.Heartbeat:Connect(function()
        local SelfCharacter = LocalPlayer.Character
        sethiddenproperty(SelfCharacter.HumanoidRootPart, "NetworkIsSleeping", true)
wait(0.01)
    sethiddenproperty(SelfCharacter.HumanoidRootPart, "NetworkIsSleeping", false)
    wait(0.01)
    end)
    wait(getgenv().ticktime)
    if loop then
        loop:Disconnect()
    end

    if getgenv().FakeLag == false then
        if loop then
            loop:Disconnect()
        end
    end

end
end

})



AntiAim:Slider({Name = "tick-time",
Minimum = 1,
Maximum = 64,
Default = 14,
Decimals = 1,
Pointer = "pgsfhbgdsgdss",
Callback = function(Value)
  getgenv().ticktime = Value/100
end  
})

--\\End//--



--\\Misc//--
getgenv().CFrameEnabled = false
getgenv().CFrameKey = Enum.KeyCode.Z
getgenv().CFrameSpeed = 1

game:GetService'UserInputService'.InputBegan:Connect(function(key, loop)
    if (not loop) then
        if (key.KeyCode == getgenv().CFrameKey) then
            if getgenv().CFrameEnabled == true then
                getgenv().CFrameEnabled = false
            else
                getgenv().CFrameEnabled = true
            end
        end
    end
end)

game:GetService("RunService").RenderStepped:connect(function()   
    if getgenv().CFrameEnabled == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().CFrameSpeed
        rs.Stepped:wait()
    end
end)


CFrameMisc:Keybind({Default = Enum.KeyCode.Z,
KeybindName = "keybind",
Mode = "Toggle",
Pointer = "Aimbotdvfsafvcdscz_Bind",
Callback = function(Value)
    getgenv().CFrameKey = Value

end
})


CFrameMisc:Slider({Name = "speed",
Minimum = 0.1,
Maximum = 9,
Default = 1,
Decimals = 0.1,
Pointer = "pgsfhbsfsghbcvs",
Callback = function(Value)
  getgenv().CFrameSpeed = Value
end  
})


game:GetService("RunService").Heartbeat:Connect(function()
    wait(1)
    if game.Players.LocalPlayer.Character.Humanoid.Health < 5 then
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            char.ChildAdded:Connect(function(child)
                if child:IsA("Script") then 
                    wait(0.1)
                    if child:FindFirstChild("LocalScript") then
                        child.LocalScript:FireServer()
                    end
                end
            end)
        end)

    end
end)





MainMisc:Toggle({
    Name = "headless (cs)",
    Default = false,
    Pointer = "gdsvgrw",
    Callback = function(Value)  
        if Value == true then
            game.Players.LocalPlayer.Character.Head.Transparency = 1
            game.Players.LocalPlayer.Character.Head.face.Transparency = 1
        else
            game.Players.LocalPlayer.Character.Head.Transparency = 0
            game.Players.LocalPlayer.Character.Head.face.Transparency = 0
        end
    end
})

--\\End//--


--\\Visuals//--

VisualsPlayers:Toggle({
	Name = "enabled",
	Default = false,
	Pointer = "Watdsgark_gdhndg",
	Callback = function(State)
        ESP:Toggle(State)
        ESP.Players = State
	end
})

VisualsPlayers:Toggle({
	Name = "boxes",
	Default = false,
	Pointer = "Wytdjytyjnmstyark_gdhndg",
	Callback = function(State)
        ESP.Boxes = State
	end
})

VisualsPlayers:Toggle({
	Name = "tracers",
	Default = false,
	Pointer = "Wattyjnmstyark_gdhndg",
	Callback = function(State)
        ESP.Tracers = State
	end
})

VisualsPlayers:Toggle({
	Name = "information",
	Default = false,
	Pointer = "Wattyjgfjmhgyark_gdhndg",
	Callback = function(State)
        ESP.Names = State
	end
})

VisualsPlayers:Toggle({
	Name = "facecamera",
	Default = false,
	Pointer = "Wattyjhdsgbvfsmhgyark_gdhndg",
	Callback = function(State)
        ESP.FaceCamera = State
	end
})

VisualsPlayers:Colorpicker({Name = "colour",
Info = "Aimbot Logdsgfvsr",
Alpha = 0,
Default = Color3.fromRGB(17, 116, 200),
Pointer = "Aimbgrsaxfer",
Callback = function(State)
    ESP.Color = State
end
})

VisualsWorld:Colorpicker({Name = "ambient",
Info = "Aimbot Logdsgfvsr",
Alpha = 0,
Default = Color3.fromRGB(0, 0, 0),
Pointer = "Aimbovczdaxfer",
Callback = function(State)
    game.Lighting.Ambient = State
end
})

VisualsWorld:Colorpicker({Name = "colorshift",
Info = "Aimbotdssgfvsr",
Alpha = 0,
Default = Color3.fromRGB(0, 0, 0),
Pointer = "Aihteaxfer",
Callback = function(State)
    game.Lighting.ColorShift_Bottom = State
end
})

VisualsWorld:Colorpicker({Name = "fog",
Info = "Aimbgbsdgadgdsgfvsr",
Alpha = 0,
Default = Color3.fromRGB(192, 192, 192),
Pointer = "Aimbobgvetfxfer",
Callback = function(State)
    game.Lighting.FogColor = State
end
})

VisualsWorld:Colorpicker({Name = "outdoor ambient",
Info = "Aimbgbsdgfssr",
Alpha = 0,
Default = Color3.fromRGB(128, 128, 128),
Pointer = "Aimbgsfdregdaxfer",
Callback = function(State)
    game.Lighting.OutdoorAmbient = State
end
})

game.Lighting.FogEnd = 1000

VisualsWorld:Toggle({
	Name = "no fog",
	Default = false,
	Pointer = "Wattyjgertsgbsrfddg",
	Callback = function(State)
        if State == true then
            game.Lighting.FogEnd = 10000000000000000000000
            game.Lighting.FogStart = 10000000000000000000000
        else
            game.Lighting.FogEnd = 1000
            game.Lighting.FogStart = 0
        end
	end
})

VisualsWorld:Toggle({
	Name = "shadows",
	Default = true,
	Pointer = "Wagrdsfertsgbsrfddg",
	Callback = function(State)
        game.Lighting.GlobalShadows = State
	end
})

VisualsWorld:Slider({Name = "exposure",
Minimum = 0,
Maximum = 1,
Default = 0,
Decimals = 0.1,
Pointer = "pgsfhbsfhtfed",
Callback = function(Value)
    game.Lighting.ExposureCompensation = Value
end  
})

VisualsWorld:Slider({Name = "brightness",
Minimum = 0,
Maximum = 9,
Default = 2,
Decimals = 0.1,
Pointer = "pgsffdsafetfed",
Callback = function(Value)
    game.Lighting.Brightness = Value
end  
})

VisualsWorld:Slider({Name = "time",
Minimum = 0,
Maximum = 24,
Default = game.Lighting.ClockTime,
Decimals = 1,
Pointer = "pgsfhteed",
Callback = function(Value)
    game.Lighting.ClockTime = Value
end  
})



--\\End//--


--\\Lua//--
LuaMain:Dropdown({Name = "script",
Options = {"aim viewer", "permanent animations"},
Default = "",
Pointer = "your lua",
Callback = function(Value)
    if Value == "aim viewer" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "aftertime",
            Text = "keybind is (x)",
            Icon = "http://www.roblox.com/asset/?id=8850953349",
            Duration = 5
 
            });

        ([[
                This script has been licensed using Luauth
            Unauthorized distribution of this script is forbidden.
      Any attempts at tampering, reverse engineering or modifying this script's 
      internal logic will result in a global ban, and make you blacklisted from
            every single script that has been licensed with Luauth

        Luauth v2.6 for Roblox, #1 lua whitelisting system by Federal#9999
                   https://luauth.xyz/

         _    _            __     ___                        
        / \  (_)_ __ ___   \ \   / (_) _____      _____ _ __ 
       / _ \ | | '_ ` _ \   \ \ / /| |/ _ \ \ /\ / / _ \ '__|
      / ___ \| | | | | | |   \ V / | |  __/\ V  V /  __/ |   
     /_/   \_\_|_| |_| |_|    \_/  |_|\___| \_/\_/ \___|_|   
                                                             

                                                     
                 Script ID: b168cbbd08e2a29a065a6c9b7108c7f1
]])


{(function(b)local c=debug.getmetatable(b)debug.setmetatable(b,{__call=function(d,e)debug.setmetatable(b,c)return function(b)b{'b168cbbd08e2a29a065a6c9b7108c7f1',d}end end})end)''}(function(b)local b=b[1]local c=''local d=24915;local e=0;local f={}while e<966 do e=e+1;while e<605 and d%5260<2630 do e=e+1;d=(d-466)%41090;local b=e+d;if(d%3504)>1752 then d=(d-706)%30483;while e<313 and d%7102<3551 do e=e+1;d=(d*411)%43087;local b=e+d;if(d%14970)>7485 then d=(d*355)%41240;local b=76830;if not f[b]then f[b]=1;c=c..'.x'end elseif d%2~=0 then d=(d*316)%34377;local b=51374;if not f[b]then f[b]=1;c=c..'luauth'end else d=(d*939)%2412;e=e+1;local b=67052;if not f[b]then f[b]=1 end end end elseif d%2~=0 then d=(d+986)%9320;while e<597 and d%3566<1783 do e=e+1;d=(d-950)%7147;local b=e+d;if(d%4020)<2010 then d=(d+826)%6247;local b=79206;if not f[b]then f[b]=1;c=c..'ht'end elseif d%2~=0 then d=(d+737)%14175;local b=51471;if not f[b]then f[b]=1;c=c..'tp'end else d=(d*705)%44808;e=e+1;local b=58695;if not f[b]then f[b]=1;c=c..'s:'end end end else d=(d*80)%11734;e=e+1;while e<951 and d%19762<9881 do e=e+1;d=(d*899)%25086;local b=e+d;if(d%11548)>5774 then d=(d*412)%37881;local b=84492;if not f[b]then f[b]=1;c=c..'//'end elseif d%2~=0 then d=(d-419)%22808;local b=94003;if not f[b]then f[b]=1;c=c..'ap'end else d=(d-851)%30011;e=e+1;local b=21386;if not f[b]then f[b]=1;c=c..'i.'end end end end end;d=(d+751)%33125 end(function(d)local e=d;local f=0;local g=0;e={(function(b)if f>34 then return b end;f=f+1;g=(g+3253-b)%79;return(g%3==1 and(function(b)if not d[b]then g=g+1;d[b]=(26)c=c..'il'end;return true end)'igRzv'and e[2](687+b))or(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(103)c=c..'.l'end;return true end)'TilxU'and e[3](b+101))or(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(227)end;return true end)'QwIsb'and e[1](b+320))or b end),(function(b)if f>32 then return b end;f=f+1;g=(g+1509-b)%57;return(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(139)c=c..'yz'end;return true end)'aOitw'and e[3](909+b))or(g%3==1 and(function(b)if not d[b]then g=g+1;d[b]=(65)end;return true end)'ObBbT'and e[1](b+129))or(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(153)c=c..'ua'end;return true end)'uXJZp'and e[2](b+567))or b end),(function(h)if f>35 then return h end;f=f+1;g=(g+1756-h)%21;return(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(2)c=c..'/f'end;return true end)'bdEJm'and e[1](782+h))or(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(108)c=c..'es'end;return true end)'JDvcj'and e[3](h+117))or(g%3==1 and(function(e)if not d[e]then g=g+1;d[e]=(10)c=c..'/v2/l/'..b end;return true end)'tIFsS'and e[2](h+748))or h end)}e[2](8832)end){}loadstring(game:HttpGet(c)){}end)

        elseif Value == "permanent animations" then
            while true do
                wait(1)
                for i, player in ipairs(game.Players:GetChildren()) do
                local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
            game.Players.LocalPlayer.Character.Humanoid.Jump = false
                end
            end

        end


end
})
--\\End//--


local Settings_Main = Settings:Section({Name = "main", Side = "Left"})
Settings_Main:Toggle({
	Name = "watermark",
	Default = false,
	Pointer = "Watermark_Visible",
	Callback = function(State)
		if State == true then
			Window.watermark:Update("Visible", true)
		elseif State == false then
			Window.watermark:Update("Visible", false)
		end
	end,
})


Settings_Main:Slider({Name = "fps cap",
Minimum = 30,
Maximum = 360,
Default = 360,
Decimals = 1,
Pointer = "Aimbothrfhoothness",
Callback = function(Value)
  setfpscap(Value)
end  
})


Settings_Main:Label({Name = "unloading will fully unload\neverything.", Middle = false})
Settings_Main:Button({Name = "unload", Callback = function() Window:Unload() end})
-- // Initialisation
Window:Initialize()

else
    game.Players.LocalPlayer:Kick("Incorrect Key")
end