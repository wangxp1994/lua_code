file = io.open("test.txt", "r")

print(file:read())

file:close()

file = io.open("test.txt", "a")

file:write("\ngive you color see see")

file:close()

