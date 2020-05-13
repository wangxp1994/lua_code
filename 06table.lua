--table的创建是通过"构造表达式"来完成,最简单构造表达式是{},用来创建一个空表
--也可以在表里添加一些数据,直接初始化表
t1 = {}
t2 = {"a", "b", "c", "d"}
print(t1)   --table: 00B09650
print(t2)   --table: 00B095D8
for k,v in pairs(t2) do
    print("k=", k, ",v=", v)
end
--输出为
--[[
k=      1       ,v=     a
k=      2       ,v=     b
k=      3       ,v=     c
k=      4       ,v=     d
]]
--在lua里表的默认初始索引一般以1开始

t1["name"] = "Tom"
t1['age'] = 12
t1[1] = 101
for k,v in pairs(t1) do
    print("k=", k, ",v=", v)
end
--输出为
--[[
k=      1       ,v=     101
k=      age     ,v=     12
k=      name    ,v=     Tom
]]

t3 = {a=111, b=222, c=333}
for k,v in pairs(t3) do
    print("k=", k, ",v=", v)
end
--输出为
--[[
k=      a       ,v=     111
k=      c       ,v=     333
k=      b       ,v=     222
]]