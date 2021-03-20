"""на вход поступает число и массив чисел которые надо проверить на взаимную простоту
иду по массиву и проверяю,   n нод el = 1 -> добавляю в список выхода"""

def col_prost(n, arr)
    result = []
    for el in arr
        if el.gcd(n) == 1
            result.append(el)
        end
    end
    puts("Ответ: #{result}")
    return rersult
end


puts('Введите число с  которым хотите сравнивать: ')
n = gets.chomp.to_i
puts('Введите числа, которые хотите проверить: ')
arr = gets.chomp.split.map(&:to_i)
puts("Сравниваю #{n} c каждым из #{arr}")


col_prost(n, arr)