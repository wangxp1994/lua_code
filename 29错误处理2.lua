-- lua中处理错误,可以使用函数pcall(protected call)来包装需要执行的代码
-- pcall接收一个函数和要传递给后者的参数,并执行,执行结果：有错误、无错误
-- 返回值true或者或false, errorinfo
print(pcall(function(i) print(i) end, "apple"))     --apple true
print(pcall(function(i) error("error..") end, "apple")) --false 29错误处理2.lua:5: error..
