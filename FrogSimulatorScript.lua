local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/Frog-Simulator/main/FrogSimulator.lua')))()
local w = library:CreateWindow("Frog Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoClick",function(bool)
    shared.toggle = bool
    AutoClick = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoCollectGems",function(bool)
    shared.toggle = bool
    AutoCollectGems = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
--Credits
u:Button("Relax",function()
    setclipboard("Relax")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if AutoClick == true then
        game:GetService("ReplicatedStorage").NetActivation:FireServer()
    end
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").Sell:FireServer()
    end
    
    if AutoCollectGems == true then
        for i,v in pairs(game:GetService("Workspace").Gems:GetChildren()) do
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
        end
        wait(.1)
        for i,v in pairs(game:GetService("Workspace").Gems:GetChildren()) do
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
        end
        wait(.1)
    end
end