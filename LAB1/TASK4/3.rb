
def min (a,b)
    a<b ? a : b
  end  

def globMinInd (arr, ind, curr)
    curr = min(curr, arr[ind])
    if ind == arr.length - 1
        return curr
    else 
        return globMinInd(arr, ind+1, curr)
    end
end

def findInd (arr, ind)
    if ind != 0
        arr.shift
        ind -= 1
        return findInd(arr,ind)
    else return arr.first
    end
end

def globMin (arr)
    globMinInd(arr, ind = 0, curr = arr.first)
end

array = [6,4,1,8,5,14]

glMin = globMin(array)
puts glMin

f = array[2]
puts f

if glMin == f
    puts "да"
else puts "нет"
end