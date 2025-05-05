local folderName = "Sorrow"
local fileName = "TodayIsARainyDay.txt"
local filePath = folderName .. "/" .. fileName

if not isfolder(folderName) then
    makefolder(folderName)
end

local fileContent = "But I've always been there for you."
writefile(filePath, fileContent)

local content = readfile(filePath)
