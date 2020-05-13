-- 字符串由一对双引号或单引号来表示
-- 也可以用2个方括号"[[]]"来表示"一块"字符串
string1 = 'this is string1'
string2 = "this is string2"
string3 = [[
    good good study,
    day day up.
]]
print(string1)
print(string2)
print(string3)

-- 在对一个数字字符串上进行算术操作时,lua会尝试将这个数字字符串转成一个数字
print("2" + 6)      --8
print("2" + "6")    --8
print("2 + 6")      --2 + 6
print("2e2" * "6")  --1200

-- 字符串连接使用的是 ..
print("a" .. "b")       --ab
print(123 .. 456)       --123456
print(type(123 .. 456)) --string

-- 使用#来计算字符串的长度,放在字符串前面
print(#string3) --80