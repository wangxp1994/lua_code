local function square(maxCount, currentNum)
    if currentNum < maxCount then
        currentNum = currentNum + 1
    return currentNum, currentNum^2
    end
end

for i, n in square, 3, 0 do
    print(i, n)
end
