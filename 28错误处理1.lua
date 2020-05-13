-- assert (v [, message])
-- 如果其参数v的值为假,它就调用error,否则返回所有的参数
-- 在错误情况时, message指那个错误对象
-- 如果不提供这个参数,参数默认为"assertion failed!"
local function add(a, b)
    assert(type(a)=="number", "a is not number")
    assert(type(b)=="number", "b is not number")
    return a + b
end
add(10) --lua: 28错误处理.lua:4: b is not number

-- error (message [, level])
-- 终止正在执行的函数,并返回message的内容作为错误信息(error函数永远都不会返回)
-- Level=1[默认]：为调用error位置(文件+行号)
-- Level=2：指出哪个调用error的函数的函数
-- Level=0:不添加错误位置信息