"""
Новая программа «Работа с числами». 
Получить число как аргумент программы. 
Найти сумму цифр числа. Рассмотреть тип целое число. 
Получить все методы в irb режиме, включить снимок экрана в отчет.
Разобрать и включить в отчет половину методов с использованием
официальной документации языка.
"""

puts("Введите число: ")
n = gets.chomp.to_i
sum = 0
if n < 0 then n = -n end

while n > 0
    sum = sum + n % 10
    n = n / 10
end

puts "Ответ: #{sum}"


# sqrt(n) → integer - Корень квадратный
# int % other → real - Деление по модулю
# int & other_int → integer - Побитовое И
# int * numeric → numeric_result - Обычное умножение
# int ** numeric → numeric_result - Возведение в степень
# int + numeric → numeric_result - Сложение
# int - numeric → numeric_result - Вычитание
# -int → integer - Отрицание
# int / numeric → numeric_result - Деление
# int < real → true or false - Сравнение
# int == other → true or false - равно
# digits → array  - 12345.digits      #=> [5, 4, 3, 2, 1]
# even? → true or false - Чётное или не чётное?
# integer? → true - Целое?
# .next → integer - Итератор (та же фигня что .succ)
# odd? → true or false - Нечётное? 
# a.pow(b)     #=> same as a**b
# pred → integer - итерация в обратную сторону
# upto(limit) {|i| block } → self 
5.upto(10) {|i| print i, " " }   #=> 5 6 7 8 9 10
# zero? → true or false - Ноль?
