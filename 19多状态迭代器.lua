array = {"Angelababy", "Lady Gaga"}

local function elementIterator(collection)
    local index = 0
    local count = #collection
    return function()
        index = index + 1
        if index <= count then
            return collection[index]
        end
    end
end

for ele in elementIterator(array) do
    print(ele)
end