"""
Спросить какой язык у пользователя любимый, в случае, 
если это ruby, ответить что пользователь подлиза, иначе обязательно ответить, 
что скоро будет ruby и поставить различный комментарий для каждого языка. 
Рассмотреть условный оператор и разные способы его построения
(реализовать несколько коммитов для разных способов его написания). 
Указать коммиты и способы в отчете. 
Рассмотреть оператор switch case.
"""

# Эта дичь нужна для коректного отображения (и чтения) кириллицы в консоль
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end


# Здроваемся
puts "Привет! Какой у тебя любимый ЯП? "
name =  gets.chomp.encode("UTF-8")


if (name == "ruby" or name == "руби");
    puts "Выходит, что ты подлиза"
elsif (name == "python" or name == "питон");
    puts "Неплохой выбор, Python тоже ООП, но скоро твоим любимым языком станет Ruby!"
elsif (name == "c#" or name == "с#" or name == "сишарп");
    puts "Неплохой выбор, с# тоже ООП, но скоро твоим любимым языком станет Ruby!"
elsif (name == "java" or name == "джава" or name == "ява");
    puts "Для меня тёмный лес, но скоро твоим любимым языком станет Ruby!"
elsif (name == "prolog" or name == "пролог");
    puts("Жесть... Советую попробовать Ruby")
else;
    puts("#{name}? Хм, не знаю такого ЯП, но ты всё равно попробуй Руби")
end