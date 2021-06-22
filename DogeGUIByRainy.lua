--MADE BY RAINY

--stuff for GUI
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Dogecoin GUI")
local f = w:CreateFolder("Auto Farm")
local b = w:CreateFolder("Location Teleport")
local e = w:CreateFolder("Misc")
local u = w:CreateFolder("Credits")

--Tp stuff
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
--Location TP
local mooncard1 = CFrame.new(-41841.6133, 110.4054565, -215.498489)
local moon = CFrame.new(-41873.2891, 110.4054565, -306.498489)
local Dmountain = CFrame.new(-807, 115, -426)
local quests = CFrame.new(-120, 75, 207)
local sell = CFrame.new(32, 75, 243)
local wheel = CFrame.new(15, 75, 8)
local cooling1 = CFrame.new(-777, 75, -294)
local cooling2 = CFrame.new(-42165, 157, -500)
local tycoons = CFrame.new(15, 75, 103)
local mooncard2 = CFrame.new(-42113, 110, -243)
local shelfs = CFrame.new(-35.7681732, 75.4446793, 239.801971)

--main stuff

--Tp areas
b:Button("Tycoons",function()
    wait(0.1)
    pl.CFrame = tycoons
end)
b:Button("Exchange",function()
    wait(0.1)
    pl.CFrame = sell
end)
b:Button("Shelves",function()
    wait(0.1)
    pl.CFrame = shelfs
end)
b:Button("Quests",function()
    wait(0.1)
    pl.CFrame = quests
end)
b:Button("Moon",function()
    wait(0.1)
    pl.CFrame = moon
end)
b:Button("Doge Mountain",function()
    wait(0.1)
    pl.CFrame = Dmountain
end)
b:Button("Moon GPU 1",function()
    wait(0.1)
    pl.CFrame = mooncard1
end)
b:Button("Moon GPU 2",function()
    wait(0.1)
    pl.CFrame = mooncard2
end)
b:Button("Doge Mountain Cooling",function()
    wait(0.1)
    pl.CFrame = cooling1
end)
b:Button("Moon Cooling",function()
    wait(0.1)
    pl.CFrame = cooling2
end)
b:Button("Prize Wheel",function()
    wait(0.1)
    pl.CFrame = wheel
end)


--################################################################

--misc things

e:Slider("Walk Speed",function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 
end)

e:Slider("Jump Power",function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75
end)

e:Button("Reset Character",function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)

--bool Things
e:Toggle("Anti Afk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end) 

f:Toggle("AutoSell", function(bool)
    shared.toggle = bool
    AutoSell = bool
end)


--Stuff to make bools work
while wait() do
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer("Exchange",{["Rate"] = math.huge})
    end
end
  
--Credits
u:Button("Created by Rainy")
