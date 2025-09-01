local player = game.Players.LocalPlayer
local hrp = player.Character.HumanoidRootPart
local bunnies = game:GetService("Workspace").ToFind:GetChildren()

for _,bunny in pairs(bunnies) do
    firetouchinterest(hrp,bunny,0)
    firetouchinterest(hrp,bunny,1)
    print("Đã thu thập được:",bunny.Name)
    wait(0.1)
end