local inputString = "Nice to meet you"
local resultString = ""
for i = 1, #inputString do
    local char = inputString:sub(i, i)
    local asciiCode = string.byte(char)
    resultString = resultString .. tostring(asciiCode) .. "/"
end
resultString = resultString:sub(1, -2)
if setclipboard then
    setclipboard(resultString)
end
