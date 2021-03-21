"""Задание 4. Реализовать отдельным методом чтение списка из файла."""

# Получает на вход имя файла, возвращает список - содержимое файла.
def reader(file_name)
    file = File.new(file_name,"r:UTF-8")
    arr = file.read.split
    return arr
end

print(reader("text.txt"))