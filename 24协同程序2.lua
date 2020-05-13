local function foo(a)
    print("foo function is running", a)
    return coroutine.yield(2 * a)
end

co = coroutine.wrap(function(a, b)
    print("first --->", a, b)
    local r = foo(a + 1)

    print("second --->", r)
    local r, s = coroutine.yield(a+b, a-b)

    print("third --->", r, s)
    return b, "over"
end
)

print("main", co(1, 10))
print("main", co("r"))
print("main", co("x", "y"))
print("main", co("x", "y"))

-- first --->      1       10
-- foo function is running 2
-- main    4
-- second --->     r
-- main    11      -9
-- third --->      x       y
-- main    10      over
-- lua: 24协同程序2.lua:21: cannot resume dead coroutine