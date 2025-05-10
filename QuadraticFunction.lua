--This is an Example
function solveQuadratic(a, b, c)
    local discriminant = b^2 - 4*a*c
    if discriminant > 0 then
        local root1 = (-b + math.sqrt(discriminant)) / (2*a)
        local root2 = (-b - math.sqrt(discriminant)) / (2*a)
        return root1, root2
    elseif discriminant == 0 then
        local root = -b / (2*a)
        return root
    else
        local realPart = -b / (2*a)
        local imaginaryPart = math.sqrt(-discriminant) / (2*a)
        return realPart .. " + " .. imaginaryPart .. "i", realPart .. " - " .. imaginaryPart .. "i"
    end
end

local a = 1
local b = -3
local c = 2
local roots = solveQuadratic(a, b, c)
print(roots)
