file = io.open("test.txt", "w") --打开文件

io.output(file) --设置默认输出文件为test.txt

io.write("good good study\nday day up") --写入内容

io.close(file)  --关闭文件

file = io.open("test.txt", "r")
io.input(file)
print(io.read()) --读取一行
print(io.read())
io.close(file)

-- io.tmpfile():返回一个临时文件句柄,该文件以更新模式打开,程序结束时自动删除
-- io.type(file):检测obj是否一个可用的文件句柄
-- io.flush():向文件写入缓冲中的所有数据
-- io.lines(optional file name):返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,但不关闭文件