"""
Задание 6. 
Решить предложенные задачи по вариантам. 
Задание в отдельную программу. 
Каждая задача отдельный метод с использованием циклов. 
Реализовать выбор пользователя какую задачу решать. 
Чтение из файла или с клавиатуры. 
Каждый метод отдельный коммит. 
Итоговая задача – отдельный коммит.
"""
def arr_input
    puts("Введи целочисленный массив через пробел: ")
    return arr = gets.chomp.split.map(&:to_i)
end

# 8. Дан целочисленный массив. Необходимо найти индексы двух наименьших элементов массива.
def z_8 (arr, n) # arr - массив, n - кол-во индексов мин элементов которые нужно вернуть.
    min_ind = []
    n.times {
        min_ind << arr.index(arr.min)
        arr.delete(arr.min)
    }
    return min_ind # Список индексов
end

print(z_8(arr_input, 2))

# 20. Дан целочисленный массив. Необходимо найти все пропущенные числа.
# [5,8,10] -> [5,6,7,8,9,10]
def z_20 (arr)
    for i in 0..arr.length
        if arr[i+1] != arr[i]+1
            arr.insert(i+1, arr[i]+1)
        end
    end
    return arr
end

#32. Дан целочисленный массив. Найти количество его локальных максимумов.
def z_32 (arr)
    arr.sort!
    local_max = []
    for i in 1..arr.length-1
        if arr[i] > arr[i-1]
            if arr[i] > arr[i+1]
                local_max << arr[i]
            end
        end
    end
    return local_max
end

# 44. Дан массив чисел. Необходимо проверить, чередуются ли в нем целые и вещественные числа
def z_44 (arr) # Чувствителен к вводу с консоли, проверять! Но работает
    for i in 0..arr.length-1
        if arr[i].class == arr[i+1].class
            return false
        end
    end
    return true
end

# 56. Для введенного списка посчитать среднее арифметическое непростых элементов, 
# которые больше, чем среднее арифметическое простых.
# Т.е сначала найти среднее арифметическое простых, затем посмотреть какие непростые больше этого значения
def z_56 (arr)
    cnt = 0
    cnt2 = 0
    mean_even = 0
    mean_not_even = 0
    for el in arr
        if el.even?
            mean_even += el
            cnt += 1
        end
    end
    mean_even = mean_even / cnt
    for el in arr
        if el.even? == false and el > mean_even
            mean_not_even += el
            cnt2 += 1
        end
    end
    return mean_not_even = mean_not_even / cnt2
end