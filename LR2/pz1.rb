"""
Задание 1. 
Написать программу, которая читает список с клавиатуры,
находит минимальный, максимальный элементы, 
сумму и произведение элементов. 
Каждая операция в отдельном методе.
"""

# Чтение списка с клавиатуры. Возвращает список целых чисел.
def get_int_list
    return  gets.chomp.split.map(&:to_i)
end

# Максимальный элемент
def max_el(lst)
    return lst.max
end

# Минимальный элемент
def min_el(lst)
    return lst.min
end

# Суммма элементов
def lst_sum(lst)
    return lst.sum
end

# Произведение элементов (вот это балдёж)
def lst_mult(lst)
    return lst.reduce(:*)
end

puts max_el(get_int_list) 

puts min_el(get_int_list) 

puts lst_sum(get_int_list) 

puts lst_mult(get_int_list) 

"""
Задание 2. Переписать предыдущее задание без использования циклов на
основе методов класса Array.
"""
# И так без циклов получилось