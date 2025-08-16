local Levels = workspace:WaitForChild("Levels"):GetChildren()
local OnlyLevelsNum = {}
for _,v in pairs(Levels:GetChildern()) do
    if tonumber(v.Name) then
        table.insert(OnlyLevelsNum, v)
    end
end
table.sort(OnlyLevelsNum, function(a,b)
    return tonumber(a.Name) < tonumber(b.Name)
end)
for _,map in pairs(OnlyLevelsNum) do
    for _,obj in pairs(map:GetDescendants()) do
        if obj:IsA("ClickDetector") and obj.Name ~= "FakeButton" and obj.Name ~= "FakeButtons" then 
            fireclickdetector(obj)
            print("Đã click ở level :", obj.Parent.Parent.Parent)
            wait(0.1)
        end
    end
end
