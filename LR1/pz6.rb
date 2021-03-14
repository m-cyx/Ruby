"""
«Работа с числами». 
Вынести нахождение суммы цифр числа в отдельный метод. 
Реализовать методы поиска максимальной и минимальной цифры числа, произведения цифр числа. 
Не удалять файл, в следующих лабораторных будет внесена модификация.
"""

def num_sum (n)
    return n.digits.sum
end

def m_ax(n)
    return n.digits.max
end

def m_in(n)
    return n.digits.min
end

def m_ult(n)
    res = 1
    lst = n.digits
    for el in lst
        res = res * el
    end
    return res
end

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