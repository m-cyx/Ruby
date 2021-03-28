"""
Задание 8. 
Дана строка в которой числа перечислены через пробел.
Необходимо найти максимальное из этих чисел.
"""

def arr_input
    puts("Введи целочисленный массив через пробел: ")
    return arr = gets.chomp.split.map(&:to_i)
end

def max_el(lst)
    return lst.max
end

puts max_el(arr_input)