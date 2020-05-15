local function fun(a)
    print("this is function, and a = " .. a)
end

fun(5)  --this is function, and a = 5

--匿名函数
local function testFun(num, fun)
    for i = 1,num do
        fun(i)
    end
end

testFun(5,
    function(num)
        print("this number is " .. num)
    end
)