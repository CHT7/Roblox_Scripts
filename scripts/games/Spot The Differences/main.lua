local Players = game:GetService("Players")
local levels = Players.LocalPlayer.PlayerGui.MainInterface.Container.LevelsContainer.Levels

for _,i in pairs(levels:GetChildren()) do 
    if i:isA("ImageButton") then
        game:GetService("ReplicatedStorage").Events.LevelUp:FireServer()
        print("Đã hoàn thành màn:",i.Name)
        wait(0.1)
    end
end