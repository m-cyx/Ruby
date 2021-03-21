"""
Задание 8*. «Работа с числами». 
Ввести дополнительные аргументы программы, в которых указывать, 
какой метод должен отработать из 7 составленных. 
Реализовать возможность работы от 1 до 7 методов в
зависимости от переданных параметров. 
Если не передан ни один параметр, или параметры переданы не верно реализовать параметр -h,
описывающий все возможные параметры для Вашей программы.
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


# Сумма цифр числа, делящихся на 3
# Можно ещё просто проверить есть ли среди цифр 0,3,6,9, но так делать не стал.
def sum_num_3(n)
    sum = 0
    for dig in n.digits
        if dig % 3 == 0
            sum += dig
        end
    end
    return sum
end


# Делитель числа, являющийся взаимно простым с наибольшим количеством цифр данного числа.
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


                        # !!!!!! Столкнулся с ошибкой чтения. Стековерфлоу: !!!!!!
"""
Trying to use gets inside a rake task? You may be seeing this error message:
Errno::ENOENT: No such file or directory @ rb_sysopen
Did you try searching the error, and end up on this page? This answer is not for the OP, but for you.
Use STDIN.gets. Problem solved. That's because just using gets resolves back to $stdin.gets and rake is overriding the global variable so that gets tries to open a file handle that doesn't exist. Here's why:
What's the difference between gets.chomp() vs. STDIN.gets.chomp()?

Ну кароче это потому что я общаюсь над пространством стандартных имён и перезаписываю их, при использовании аргумента. Так что надо явно указать что я в стандартном пространстве вызываю .gets
"""


for i in 0 ... ARGV.length      # Цикл кол-ва аргументов. Сколько аргументов - столько и вызовов
    program = ARGV[i] # Параметр запуска
    case program
        when "1"
            puts("Введите число: ")
            n = STDIN.gets.chomp.to_i
            puts "Сумма цифр: #{num_sum(n)}"
        when "2"
            puts("Введите число: ")
            n = STDIN.gets.chomp.to_i
            puts("Максимальная цифра: #{m_ax(n)}")
        when "3"
            puts("Введите число: ")
            n = STDIN.gets.chomp.to_i
            puts("Минимальная цифра: #{m_in(n)}")
        when "4"
            puts("Введите число: ")
            n = STDIN.gets.chomp.to_i
            puts("Произведение цифр: #{m_ult(n)}")
        when "5"
            puts('Введите число с  которым хотите сравнивать: ')
            n = STDIN.gets.chomp.to_i
            puts('Введите числа, которые хотите проверить: ')
            arr = STDIN.gets.chomp.split.map(&:to_i)
            puts("Количество чисел, взаимно простых с заданным: #{col_prost(n, arr)}")
        when "6"
            puts('Введите число, сумму цифр, делящихся на 3, которого вы хотите найти: ')
            puts("Ответ: " + to_str(sum_num_3(STDIN.gets.chomp.to_i)))
        when "7"
            puts('Введите число, делитель которого, являющийся взаимно простым с наибольшим количеством цифр данного числа, вы хотите найти: ')
            puts("Ответ: " + to_str(del_wich_prost(STDIN.gets.chomp.to_i)))
        when "h"
            puts("Привет, рассказываю про программу: \nПри вызове указываем параметр запуска (1-7)
            1) Сумма цифр
            2) Максимальная цифра числа
            3) Минимальная цифра числа
            4) Произведение цифр числа
            5) Числа взаимно простые с заданным. Возвращает длину списка взаимно простых. Можно возвращать и сам список, при желании.
            6) Сумма цифр числа, делящихся на 3
            7) Делитель числа, являющийся взаимно простым с наибольшим количеством цифр данного числа.

            Можно вызывать один или несколько методов программы, в зависимости от переданных параметров.")
        else
            puts("Введен неверный параметр запуска или вовсе не указан, попробуйте ввести h для справки.")
    end
end
