-- 模块与包
common = {}

-- 打印table
function common.printTable(collection)
    local str = "{"
    for idx, val in pairs(collection) do
        str = str..idx..": "..val..", "
    end
    print(str.."}")
end

-- 计算table中元素个数
function common.lenTable(collocation)
    local len = 0
    for k, v in pairs(collocation) do
        len = len + 1
    end
    return len
end

-- 两个数组相加
function common.addArray(array1, array2)
    for i = 1, common.lenTable(array2) do
        table.insert(array1, common.lenTable(array1)+1, array2[i])
    end
    return array1
end

return common