--This is an Example
function solveQuadratic(a, b, c)
    local discriminant = b^2 - 4*a*c
    local roots = {}
    if discriminant > 0 then
        local root1 = (-b + math.sqrt(discriminant)) / (2*a)
        local root2 = (-b - math.sqrt(discriminant)) / (2*a)
        table.insert(roots, root1)
        table.insert(roots, root2)
    elseif discriminant == 0 then
        local root = -b / (2*a)
        table.insert(roots, root)
    else
        local realPart = -b / (2*a)
        local imaginaryPart = math.sqrt(-discriminant) / (2*a)
        table.insert(roots, realPart .. " + " .. imaginaryPart .. "i")
        table.insert(roots, realPart .. " - " .. imaginaryPart .. "i")
    end
    return roots
end

local a = 1
local b = -3
local c = 2
local roots = solveQuadratic(a, b, c)
for i, root in ipairs(roots) do
    print("Root " .. i .. ": " .. tostring(root))
end
