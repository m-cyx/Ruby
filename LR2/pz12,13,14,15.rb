""" 12 Прочитать список строк из файла. Упорядочить по длине строки."""
def sort_by_line_lenth (lst)
    lst.sort { |str1, str2| str1.length <=> str2.length }

""" 13 Упорядочить по количеству слов в строке."""
def sort_by_count_words (lst)
    lst.sort { |str1, str2| str1.split.length <=> str2.split.length }

""" 14 Упорядочить по количеству слов идущих после чисел."""
def sort_by_count_words_after_num (lst)    
    reg = /\d+(.\d+)?\s[a-z]+/i
    lst.sort { |str1, str2| str1.scan(reg).length <=> str2.scan(reg).length }

""" 15 Решить задачи по вариантам. 2, 4, 8, 10 """
"""2 В порядке увеличения среднего веса ASCII-кода символа строки"""
def ascii_weigth (str)
    str.chars.map { |ch| Integer(ch.ord) }
end



"""4 В порядке увеличения квадратичного отклонения среднего веса"""