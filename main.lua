-- 测试文件

function maxTableKey(collection)
    local maxKey = nil
    for idx,val in pairs(collection) do
        if not maxKey then
            maxKey = val
        end
        if idx > maxKey then
            maxKey = val
        end
    end
    return maxKey
end
-- return common

fruits = {"banana", "apple", "orange", "grapes"}
print(maxTableKey(fruits))