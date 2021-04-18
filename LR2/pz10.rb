"""
Дана строка. Необходимо найти все даты, которые описаны в виде '31 февраля 2007'
"""
def data_list (str)
    regular = /(\d\d?\s)(марта|апреля|мая)(\s\d+)/i
    data = str.scan(regular)
    data.map { |date| date.join}
end

# 11. Задачи 2, 10, 17
""" 2. Дана строка. Необходимо найти все строчные символы латиницы, которые в ней используются. """

def lowercase (str)
    lowercases = str.chars.filter { |s| s =~ /[a-z]/}
    lowercases.uniq.to_a
end

""" 10. Дана строка. Необходимо найти количество задействованных символов латиницы в этой строке (без дубликатов). """

def unique_sym (str)
    sym = str.downcase.chars.filter { |s| s =~ /[a-z]/}
    sym.uniq.length
end

""" 17. Дана строка в которой записан путь к файлу. Необходимо найти имя файла без расширения. """









puts "Выбери, какую задачу будем решать:
       1. 10
       2. 11.2
       3. 11.10.
       4. 11.17"
n = gets.chomp

puts "Введи строку: "
str = gets.chomp

case n
    when "1"
        puts data_list(str)
    when "2"
        puts (lowercase(str)).join " "
    when "3"
        puts unique_sym(str)
end