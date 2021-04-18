""" 12 Прочитать список строк из файла. Упорядочить по длине строки."""
def sort_by_line_lenth (lst)
    lst.sort { |str1, str2| str1.length <=> str2.length }
end

""" 13 Упорядочить по количеству слов в строке."""
def sort_by_count_words (lst)
    lst.sort { |str1, str2| str1.split.length <=> str2.split.length }
end

""" 14 Упорядочить по количеству слов идущих после чисел."""
def sort_by_count_words_after_num (lst)    
    reg = /\d+(.\d+)?\s[a-z]+/i
    lst.sort { |str1, str2| str1.scan(reg).length <=> str2.scan(reg).length }
end

""" 15 Решить задачи по вариантам. 2, 4, 8, 10 """
""" 2 В порядке увеличения среднего веса ASCII-кода символа строки"""
def ascii_weigth (str)
    for el in str
        el.chars.map { |ch| Integer(ch.ord) } 
    end
    # .ord Возвращает целочисленный порядковый номер строки из одного символа.
end

""" 4 В порядке увеличения квадратичного отклонения среднего веса"""
def avg_sqtr (arr, w)
    Math.sqrt(arr.map { |i| (i - w) ** 2 }.sum / arr.length)
end

""" 8 В порядке увеличения квадратичного отклонения между средним
весом ASCII-кода символа в строке и максимально среднего ASCII-кода
тройки подряд идущих символов в строке"""

def sqtr_avg_weigth_ascii_3inrow (str)
    str.chars.map { |ch| Integer(ch.ord) }
end    

puts "Выбери, какую задачу будем решать:
    1. 12
    2. 13
    3. 14.
    4. 15.2
    5. 15.4
    6. 15.8
    "
n = gets.chomp

lst = IO.readlines("text.txt", chomp: true)

case n
    when "1"
        puts sort_by_line_lenth(lst)
    when "2"
        puts sort_by_count_words(lst)
    when "3"
        puts sort_by_count_words_after_num(lst)
    when "4"
        puts ascii_weigth(lst)
    when "5"
        puts avg_sqtr(lst)
    when "6"
        puts sqtr_avg_weigth_ascii_3inrow(lst)
end