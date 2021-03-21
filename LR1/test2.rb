"""# Сумма цифр числа, делящихся на 3            Можно ещё просто проверить есть ли среди цифр 0,3,6,9
def sum_num_3(n)
    sum = 0
    for dig in n.digits
        if dig % 3 == 0
            sum += dig
        end
    end
    return sum
end

puts(sum_num_3(gets.chomp.to_i))"""
def col_prost(n, arr)
    result = []
    for el in arr
        if el.gcd(n) == 1
            result.append(el)
        end
    end
    #puts("Ответ: #{result}")
    return result.length
end


def del_wich_prost(n)
    max = 0
    del = 0
    for i in 1..n
        if col_prost(i, n.digits) > max
            max = col_prost(i, n.digits)
            del = i
        end
    end
    return del
end

puts(del_wich_prost(gets.chomp.to_i))
