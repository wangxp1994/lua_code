-- require("common")
require "common"

-- table.concat (table [, sep [, start [, end]]])
-- concat是concatenate(连锁,连接)的缩写. table.concat()函数列出参数中指定table
-- 的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开
print("----------table.concat-----------")
words = {"a", "b", "c", "d"}
print(table.concat(words))
print(table.concat(words, " - "))
print(table.concat(words, " - ", 2, 3))

-- table.insert (table, [pos,] value)
-- 在table的数组部分指定位置(pos)插入值为value的一个元素.
-- pos参数可选, 默认为数组部分末尾
print("----------table.insert-----------")
table.insert(words, "d")
table.insert(words, 1, "aa")
common.printTable(words)

-- table.remove (table [, pos])
-- 返回table数组部分位于pos位置的元素.其后的元素会被前移.
-- pos参数可选, 默认为table长度, 即从最后一个元素删起
print("----------table.remove-----------")
table.remove(words, 1)
common.printTable(words)

print("----------table.sort-----------")
-- table.sort (table [, comp])
-- 对给定的table进行升序排序
fruits = {"banana", "apple", "orange", "grapes"}
table.sort(fruits)
common.printTable(fruits)


