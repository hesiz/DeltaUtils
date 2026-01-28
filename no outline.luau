local core = game:GetService("CoreGui")

for _, obj in ipairs(core:GetDescendants()) do
    if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
        local img = obj.Image
        if typeof(img) == "string" and img:find("new_logo%.png") then
            for _, child in ipairs(obj:GetChildren()) do
                child:Destroy()
            end
        end
    end
end
