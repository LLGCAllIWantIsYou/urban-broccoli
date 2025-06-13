local LLGC = "c|lo|u|d"
local FOCUS = "R!a!i!n.txt"
local filePath = LLGC .. "/" .. FOCUS
local Slipt = string.split(LLGC,"|")
local Slipt2 = string.split(FOCUS,"!")

if not isfolder(FOCUS) then
    makefolder(FOCUS)
end

if not isfile(filePath) then
    writefile(filePath, "")
end

local Id = "1"

local function content()

print(math.pow(2, 5))

end

local fileContent = readfile(filePath)
local read2 = string.split(fileContent, "|")

local read = false
for _, flag in ipairs(read2) do
    if flag == Id then
        read = true
        break
    end
end

if not read then
    content()
    appendfile(filePath, Id .. "|")
end
