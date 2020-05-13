-- 模块与包
common = {}

-- 打印table
function common.printTable(collection)
    for idx, val in pairs(collection) do
        print("k="..idx..", v="..val)
    end
end

-- 求table最大key
function common.maxTableKey(collection)
    local maxKey = nil
    for idx,val in pairs(collection) do
        if not maxKey then
            maxKey = idx
        end
        if idx > maxKey then
            maxKey = idx
        end
    end
    return maxKey
end