arr = gets.chomp.split.map(&:to_i)

def z_56 (arr)
    mean_even = 0
    cnt = 0
    cnt2 = 0
    mean_not_even = 0
    for el in arr
        if el.even?
            mean_even += el
            cnt += 1
        end
    end
    mean_even = mean_even / cnt
    for el in arr
        if el.even? == false and el > mean_even
            mean_not_even += el
            cnt2 += 1
        end
    end
    return mean_not_even = mean_not_even / cnt2
end


print(z_56(arr))