--[[
    Binary search is a fast searching algorithm that is used for sorted arrays.

    Combined with a fast sorting algorithm, it will be fast as heck.

]]


local function binarySearch(array,target, start, endi)

    if start > endi then
        return  "not found"
    end
  
    local middle = math.floor((start + endi) / 2)
    local middleItem = array[middle]

    if middleItem == target then
        return middle
    end

    if middleItem > target then
        return binarySearch(array,target, start, middles-1)
    end

    if middleItem < target then
        return binarySearch(array,target, middle+1, endi)
    end
end

return binarySearch
