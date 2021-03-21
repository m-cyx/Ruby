# Сумма цифр числа, делящихся на 3            Можно ещё просто проверить есть ли среди цифр 0,3,6,9
def sum_num_3(n)
    sum = 0
    for dig in n.digits
        if dig % 3 == 0
            sum += dig
        end
    end
    return sum
end

puts(sum_num_3(gets.chomp.to_i))
