arr = [1.2, 1, 1.3, 2, 1.4, 3]

def z_44 (arr)
    for i in 0..arr.length-1
        if arr[i].class == arr[i+1].class
            return false
        end
    end
    return true
end


print(z_44(arr))