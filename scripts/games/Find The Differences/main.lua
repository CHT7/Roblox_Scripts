local Stages = game:GetService("ReplicatedStorage").Stages:GetChildren()
table.sort(Stages, function(a,b)
    return tonumber(a.Name) < tonumber(b.Name)
end)
for _,stage in pairs(Stages) do
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/StageComplete"):FireServer(tonumber(stage.Name))
    print("Đã hoàn thành màn:",stage.Name)
    wait(0.2)
end