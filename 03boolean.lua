-- boolean类型只有两个可选值:true和false,Lua 把false和nil看作是false，
-- 其他的都为true,数字0也是true
if false or nil then
    print("false or nil is true")
else
    print("false and nil is false")
end

if 0 then
    print("0 is true")
end