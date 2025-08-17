local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local Cans = game:GetService("Workspace").Cans:GetChildren()
for _, can in pairs(Cans) do
    firetouchinterest(can, hrp, 0)
    firetouchinterest(can, hrp, 1)
    print("Đã thu thập:", can.Name)
end
