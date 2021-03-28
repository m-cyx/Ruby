"""
Продолжение предыдущего задания. 
Попросить пользователя ввести команду языка ruby. И команду OC. 
Выполнить команду руби и команду операционной системы. 
Включить снимок экрана с результатом в отчет.
"""

puts "Привет, введи команду ОС:"
command1 = STDIN.gets.chomp

puts "Привет, введи команду Ruby:"
command2 = STDIN.gets.chomp

puts "Команда ОС:"
system(command1)

puts "Команда Ruby:"
puts eval(command2)

"""
eval()
Evaluates the Ruby expression(s) in string. 
If binding is given, which must be a Binding object, 
the evaluation is performed in its context. 
If the optional filename and lineno parameters are 
present, they will be used when reporting syntax errors.
"""