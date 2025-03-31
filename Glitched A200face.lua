while true do
    for i = 1, 5 do
        for j = 1, 5 do
            local labelName = "ImageLabel" .. j
            if j == i then
                workspace["GA-M2j0A0w"].RushNew.Attachment.BillboardGui[labelName].Visible = true
            else
                workspace["GA-M2j0A0w"].RushNew.Attachment.BillboardGui[labelName].Visible = false
            end
        end
        wait(0.25)
    end
end
