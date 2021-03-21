"""
Задание 5. Реализовать выбор ввода списка аргументом программы. 
В случае чтения из файла адрес файла вводить в аргументе.
"""

# Получает на вход имя файла, возвращает список - содержимое файла.
def reader(file_name)
    file = File.new(file_name,"r:UTF-8")
    arr = file.read.split
    return arr
end


# Получает на вход кол-во элементов на ввод с клавиатуры (Через Enter)
def get_list(n) 
    arr = []
    for i in 0..n-1
        arr[i] = STDIN.gets.chomp
    end
    return arr 
end


case ARGV[0]
    when "m"
        puts("Введи элементы списка через ENTER")
        # Ответ
        print(get_list(STDIN.gets.chomp.to_i))
    when "f"
        print(reader(ARGV[1]))
    else
        puts "Вы не указали параметров запуска
        Попробуйте задать 'm' для ввода в консоль.
        Или же 'f', 'file_name' для чтения из файла."
end