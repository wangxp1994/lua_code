co = coroutine.create(
    function(i)
        print(i)
    end
)
coroutine.resume(co, "apple")   --apple
print(coroutine.status(co))     --dead

print("----------")
co = coroutine.wrap(
    function(i)
        print(i)
    end
)
co("banana")    --banana

print("----------")
co2 = coroutine.create(
    function()
        for i = 1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))
                print(coroutine.running())
            end
            coroutine.yield()
        end
    end
)
coroutine.resume(co2)   --1
coroutine.resume(co2)   --2
coroutine.resume(co2)   --3 / running / thread: 0017A668 false
print(coroutine.status(co2))    --suspended
print(coroutine.running())      --thread: 00172130 true(是主线程)