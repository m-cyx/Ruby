arr = gets.chomp.split.map(&:to_i)

for i in 0..arr.length
    if arr[i+1] != arr[i]+1
        arr.insert(i+1, arr[i]+1)
    end
end

print(arr)