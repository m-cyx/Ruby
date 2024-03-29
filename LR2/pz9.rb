"""
Решить задачи по вариантам. 
Предложить пользователю решить, какую задачу решать, каждая задача – отдельный метод. 
Каждый метод – отдельный коммит.
Итоговая задача – одельный коммит. Решить с помощью методов класса
String.
Вариант 8. Задачи 2, 10, 17
"""

# 2. Дана строка, состоящая из символов латиницы. 
#    Необходимо проверить, упорядочены ли строчные символы этой строки по возрастанию.

def z_2 (str)
    lower_chars = str.chars.filter { |i| i =~ /[a-z]/ }
    return lower_chars == lower_chars.sort
end

str = 'QaWbEcRdTeY'
puts(z_2(str))

# 10. Дана строка. Необходимо подсчитать количество букв "А" в этой строке.
def z_10 (str)
    a_cnt = str.chars.filter { |i| i =~ /[A]/ }
    return a_cnt.length
end


# 17. Дана строка в которой записан путь к файлу. Необходимо найти имя файла без расширения

def z_17 (str)
    string.scan(/тут придумать регулярку/)
end