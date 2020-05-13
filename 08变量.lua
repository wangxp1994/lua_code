a = 5
local b = 5

local function fun()
    c = 5
    local d = 6
end

fun()
print(c, d)     --5 nil

do
    local a = 6
    b = 6
    print(a, b) --6 6
end

print(a, b)     --5 6