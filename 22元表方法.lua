-- setmetatable(table,metatable)
--     对指定table设置元表(metatable),如果元表(metatable)中存在
--     __metatable键值,setmetatable会失败
-- getmetatable(table)
--     返回对象的元表(metatable)
require "common"

-- __index元方法
-- 当通过键来访问table的时候,如果这个键没有值,那么Lua就会寻找该table的
-- metatable(假定有metatable)中的__index键.如果__index包含一个表格,
-- Lua会在表格中查找相应的键
print("----------__index-----------")
t1 = setmetatable({apple = 100}, {
    __index = function(tab, key)
        if key == "banana" then
            return 200
        else
            return "???"
        end
    end
})
print(t1.apple, t1.banana, t1.orange) --100 200 ???
print(getmetatable(t1)) --table: 00DB8340


-- __newindex元方法
-- __newindex元方法用来对表更新,__index则用来对表访问
-- 当你给表的一个缺少的索引赋值,解释器就会查找__newindex元方法
-- 如果存在则调用这个函数而不进行赋值操作
print("----------__newindex-----------")
mymetatable = {}
t2 = setmetatable({apple = 100}, {__newindex=mymetatable})
common.printTable(t2)   --{apple: 100, }
t2.banana = 200
common.printTable(t2)   --{apple: 100, }
common.printTable(mymetatable)  --{banana: 200, }
t2.apple = 300
common.printTable(t2)       --{apple: 300, }
common.printTable(mymetatable)  --{banana: 200, }

t3 = setmetatable({apple=100}, {
    __newindex = function(tab, k, v)
        rawset(tab, k, ">>"..v.."<<")
    end
})
t3.apple = 300
t3.banana = 200
print(t3.apple, t3.banana)  --300 >>200<<


print("----------__add-----------")
-- __add 键包含在元表中，并进行相加操作
t4 = setmetatable({"a", "b"}, {
    __add = function(t1, t2)
        return common.addArray(t1, t2)
    end
})
t5 = {4, 5}
t4 = t4 + t5
common.printTable(t4)   --{1: a, 2: b, 3: 4, 4: 5, }


print("----------__call-----------")
-- __call 元方法在 Lua 调用一个值时调用
t6 = setmetatable({}, {
    __call = function(t1, t2)
        sum = 0
        for i = 1, common.lenTable(t2) do
            sum = sum + t2[i]
        end
        return sum
    end
})
print(t6({1, 2, 3}))

print("----------__tostring-----------")
-- __tostring 元方法用于修改表的输出行为
t7 = setmetatable({"apple", "banana"}, {
    __tostring = function(t1)
        return "this is a table"
    end
})
print(t7)