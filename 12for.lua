--数值for循环
for i = 0, 10, 2 do
    print(i)    -- 0 2 4 6 8 10
end

--泛型for循环
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for index, value in ipairs(days) do
    print(index, value)
end