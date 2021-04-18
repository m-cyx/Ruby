""" 12 Прочитать список строк из файла. Упорядочить по длине строки."""
def sort_by_line_lenth (lst)
    lst.sort { |str1, str2| str1.length <=> str2.length }

""" 13 Упорядочить по количеству слов в строке."""
def sort_by_count_words (lst)
    lst.sort { |str1, str2| str1.split.length <=> str2.split.length }

""" 14 Упорядочить по количеству слов идущих после чисел."""


""" 15 Решить задачи по вариантам. 2, 4, 8, 10 """