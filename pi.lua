--LAG Warning
local pi = 0
local sign = 1
local denominator = 1

while true do
    pi = pi + sign * (4 / denominator)
    sign = -sign
    denominator = denominator + 2

    print(pi)
end
