t1 = {}
print("type(t1) = ", type(t1))  --table

t1[1] = "lua"
t1["key"] = "apple"
print("t1[1] = ", t1[1])
print("t1.key = ", t1.key)

--alternatetable和mytable的是指同一个table
t2 = t1
print("t2[1] = ", t2[1])
print("t2.key = ", t2.key)

--释放变量
t2 = nil
print("t2 = ", t2)

--t1任然可以访问
print("t1.key = ", t1.key)