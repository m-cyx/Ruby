arr = gets.chomp.split.map(&:to_i)

maxi = []
    
for i in 1..arr.length-1
    if arr[i] > arr[i-1]
        if arr[i] > arr[i+1]
            maxi << arr[i]
        end
    end
end
print(maxi)