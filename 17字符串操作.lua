-- string.upper(argument)
-- 字符串全部转为大写字母
print(string.upper("hello world"))      --HELLO WORLD

-- string.lower(argument)
-- 字符串全部转为小写字母
print(string.lower("CHINA"))    --china

-- string.gsub(mainString,findString,replaceString,num)
-- 在字符串中替换
-- mainString为要操作的字符串,findString为被替换的字符
-- replaceString要替换的字符,num替换次数(可以忽略,则全部替换)
print(string.gsub("AAAAA", "A", "B", 3))    --BBBAA 3

-- string.find (str, substr, [init, [end]])
-- 在一个指定的目标字符串中搜索指定的内容(第三个参数为索引)
-- 返回其具体位置.不存在则返回nil
print(string.find("good night", "i"))   --7 7

-- string.reverse(arg)
-- 字符串反转
print(string.reverse("Lua"))    --auL

-- string.format(...)
-- 返回一个类似printf的格式化字符串
print(string.format("the value is %d", 100))    --the value is 100

-- string.char(arg) 和 string.byte(arg[,int])
-- char将整型数字转成字符并连接,
-- byte转换字符为整数值(可以指定某个字符,默认第一个字符)
print(string.char(97,98,99))        --abc
print(string.byte("abc"))       --97
print(string.byte("abc", 3))    --99

-- string.len(arg)
-- 计算字符串长度
print(string.len("aaa"))    --3
print(#"aaa")   --3

-- string.rep(string, n)
-- 返回字符串string的n个拷贝
print(string.rep("ab", 5))  --ababababab

-- string.gmatch(str, pattern)
-- 回一个迭代器函数,每一次调用这个函数,返回一个在字符串str
-- 找到的下一个符合pattern描述的子串.如果参数pattern描述的字符
-- 串没有找到.迭代函数返回nil
for word in string.gmatch("hello world", "%a+") do
    print(word) --hello / world
end

-- string.match(str, pattern, init)
-- string.match()只寻找源字串str中的第一个配对.参数init可选,
-- 指定搜寻过程的起点,默认为1
-- 在成功配对时,函数将返回配对表达式中的所有捕获结果
-- 如果没有设置捕获标记,则返回整个配对字符串
-- 当没有成功的配对时,返回nil
print(string.match("I have 2 questions for you.", "%d+ %a+"))   --2 questions

--************** 字符集合***************
--    X:  X为不包含在特殊字符中的字符,属于一个普通字符. 代表字符X本身
--    .:  代表所有字符
--    %a: 代表所有字母
--    %c: 代表所有控制字符
--    %d: 代表所有数字(0-9)
--    %g: 代表除了空格外的所有可打印字符
--    %l: 代表所有小写字母
--    %p: 代表所有标点字符
--    %s: 代表所有空白字符
--    %u: 代表所有大写字母
--    %w: 代表所有包含字母或者数子的字符
--    %x: 代表所有16进制数字(0-F)
--    %X: X为所有非字母和数字的字符,代表字符X本身.可以用来转义特殊字符.所有标点字符(即使不是特殊字符)之前都可以加一个%,代表这个标点本身.
--    [set]: 代表[]之间所有字符或者模式的集合. '-'可以用来表示前后两个字符之间的范围. 例如 [%w_] 代表所有数字,字母和下划线.
--          [0-7] 代表数字0到7 . [0-7%l%-] 代表0到7的数字,所有小写字母,还有'-', 其中'-'为特殊字符,必须转义.
--    [^set]: 代表[set]的补集

--**********模式************
--      * : 匹配0个或多个字符集合中的字符. 匹配尽可能多的字符
--      + : 匹配1个或多个字符集合中的字符. 匹配尽可能多的字符
--      - : 匹配0个或多个字符集合中的字符. 匹配尽可能少的字符
--      ? : 匹配0个或1个字符集合中的字符.
--      %n: 1<=n<=9 , 对应匹配的字串中捕获的字符串.
--    %bxy: 其中x和y是两个指定的字符. 匹配一个以x开头,并以y结尾的字符串. x和y是成对匹配的.
-- %f[set]: 一种边界模式,匹配一个空字符,这个空字符的下一个字符属于集合set,它的前一个字符不属于集合set.
--      ^ : ^在一个pattern的开头匹配字符串的开始.在pattern的其他位置代表该字符本身.
--      $ : $在一个pattern的结尾匹配字符串的结尾.在pattern的其他位置代表该字符本身.

--**********捕获************
-- 一个模式可以包含用括号包含起来的子模式,叫做捕获.
-- 当一个模式被匹配时,捕获的内容被储存起来,用作更多用途.
-- 捕获是按照先后来排序的. 例如在模式 "(a*(.)%w(%s*))" 中, "a*(.)%w(%s*)"是捕获的第一个子模式,"."是第二个,"%s*"是第三个.
-- 空捕获() , 捕获的是当前子串的开始位置和结束位置的下一个位置, 如果我们在字符串"flaaap"中使用"()aa()"模式来匹配, 那么捕获的值分别为3和5.

-- 字符串格式化
-- %c - 接受一个数字, 并将其转化为ASCII码表中对应的字符
-- %d, %i - 接受一个数字并将其转化为有符号的整数格式
-- %o - 接受一个数字并将其转化为八进制数格式
-- %u - 接受一个数字并将其转化为无符号整数格式
-- %x - 接受一个数字并将其转化为十六进制数格式, 使用小写字母
-- %X - 接受一个数字并将其转化为十六进制数格式, 使用大写字母
-- %e - 接受一个数字并将其转化为科学记数法格式, 使用小写字母e
-- %E - 接受一个数字并将其转化为科学记数法格式, 使用大写字母E
-- %f - 接受一个数字并将其转化为浮点数格式
-- %g(%G) - 接受一个数字并将其转化为%e(%E, 对应%G)及%f中较短的一种格式
-- %q - 接受一个字符串并将其转化为可安全被Lua编译器读入的格式
-- %s - 接受一个字符串并按照给定的参数格式化该字符串