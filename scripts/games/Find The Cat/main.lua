local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Levels = ReplicatedStorage.Levels:GetChildren()
for _,level in pairs(Levels) do
    game:GetService("ReplicatedStorage").Events.Play:FireServer(tostring(level.Name))
    for _,cat in pairs(level.Cats:GetChildren()) do
        game:GetService("ReplicatedStorage").Events.FoundCat:FireServer()
        -- wait(0.1)
    end
    game:GetService("ReplicatedStorage").Events.Exit:FireServer()
    print("Đã hoàn thành xong màn:",level.Name)
end