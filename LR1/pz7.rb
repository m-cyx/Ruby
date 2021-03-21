"""
«Работа с числами». 
Составить 3 метода для работы с цифрами или делителей числа на основании варианта. 
Каждый метод отдельный коммит. 
Ввести отдельный аргумент программы, 
в котором указывать, какой метод должен отработать из 7 составленных. 
Реализовать возможность работы от 1 до 7 методов в зависимости от переданных параметров. 
Если не передан ни один параметр, программа просто выводит Hello World.
Вариант № 8.
Метод 1. Найти количество чисел, взаимно простых с заданным.
Метод 2. Найти сумму цифр числа, делящихся на 3.
Метод 3. Найти делитель числа, являющийся взаимно простым с наибольшим количеством цифр данного числа.
"""


# Суммма цифр числа
def num_sum (n)
    return n.digits.sum
end

# Максимальная цифра числа
def m_ax(n)
    return n.digits.max
end

# Минимальная цифра числа
def m_in(n)
    return n.digits.min
end

# Произведение цифр числа
def m_ult(n)
    res = 1
    lst = n.digits
    for el in lst
        res = res * el
    end
    return res
end

# Числа взаимно простые с заданным. Возвращает длину списка взаимно простых. 
# Можно возвращать и сам список, при желании.
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


# Сумма цифр числа, делящихся на 3            Можно ещё просто проверить есть ли среди цифр 0,3,6,9
def sum_num_3(n)
    for dig in n.digits
        if dig % 3 == 0
            sum +=


program = ARGV[0] # Параметр запуска

puts("Введите число: ")
n = gets.chomp.to_i
puts "Сумма цифр: #{num_sum(n)}"


puts("Введите число: ")
n = gets.chomp.to_i
puts("Максимальная цифра: #{m_ax(n)}")


puts("Введите число: ")
n = gets.chomp.to_i
puts("Минимальная цифра: #{m_in(n)}")


puts("Введите число: ")
n = gets.chomp.to_i
puts("Произведение цифр: #{m_ult(n)}")


puts('Введите число с  которым хотите сравнивать: ')
n = gets.chomp.to_i
puts('Введите числа, которые хотите проверить: ')
arr = gets.chomp.split.map(&:to_i)
puts("Количество чисел, взаимно простых с заданным: #{col_prost(n, arr)}")