--多返回值
local function maxnum(t)
    local index = 1     --最大值索引
    local num = t[1]    --最大值
    for idx, val in ipairs(t) do
        if val > num then
            index = idx
            num = val
        end
    end
    return index, num
end
print(maxnum({111, 222, 100, 996,1314}))    --5 1314

--可变参数
local function avg(...)
    local sum = 0   --和
    local arg = {...}
    -- local count = #arg  --数量
    local count = select("#", ...) --也可以用select获取数量

    for idx, val in ipairs(arg) do
        sum = sum + val
        --select(n, ...)用于返回n到select('#',…)的参数
        local less = select(idx, ...)
        print("less = ", less)
    end
    return sum/count
end
print(avg(11, 12, 13, 14, 15))   --3