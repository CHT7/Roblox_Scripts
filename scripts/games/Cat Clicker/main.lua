local ReplicatedStorage = game:GetService("ReplicatedStorage")
while true do
    game:GetService("ReplicatedStorage").Click.Click:FireServer()
    for _, item in pairs(ReplicatedStorage.FishUpgrades:GetChildren()) do
        item:FireServer()
    end
    for _, item in pairs(ReplicatedStorage.Shop:GetChildren()) do
        item:FireServer()
    end
    game:GetService("ReplicatedStorage").CurrencyTransaction:FireServer("add",
                                                                        100)
    game:GetService("ReplicatedStorage").Rebirth:FireServer()
    wait(0.1)
end
