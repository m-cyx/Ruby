"""
Реализовать класс Employee, в котором будут указанные поля, 
реализовать геттеры и сеттеры для этих полей, 
реализовать конструктор, с учетом того, 
что поля «название предыдущего места работы, наименование должности,
заработная плата на предыдущем месте работы» 
могут либо присутствовать одновременно, либо отсутствовать, если стаж = 0.
"""

""" Поля: 
Фамилия Имя Отчество, год рождения, телефон, адрес, e-mail,
серия номер паспорта, специальность, стаж работы по специальности,
название предыдущего места работы, наименование должности,
заработная плата на предыдущем месте работы
"""

class Employee
    
    attr_accessor :fio, :year, :phone, :adress, :email, :passport, :speciality, :experience, :previous_job, :previous_position, :previous_salary

    def initialize fio, year, phone, adress, email, passport, speciality, experience, previous_job, previous_position, previous_salary
        @fio = fio
        @year = year
        @phone = phone
        @adress = adress
        @email = email
        @passport = passport
        @speciality = speciality
        @experience = experience
        @previous_job = previous_job
        @previous_position = previous_position
        @previous_salary =  previous_salary

    end

    def hello
      puts "Привет, я работяга #{@fio} , вот мои свойства: "
    end


end

Ivan = Employee.new 'Битбоксов Иван Семёновыч', '12.03.1912' , '8-800-555-35-35', 1, 2, 3, 4, 5, 6, 7, 8
Ivan.hello
puts Ivan.fio
puts Ivan.year
puts Ivan.phone
puts Ivan.adress
puts Ivan.email
puts Ivan.passport
puts Ivan.speciality
puts Ivan.experience
puts Ivan.previous_job
puts Ivan.previous_position
puts Ivan.previous_salary