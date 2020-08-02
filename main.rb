#serviço para chamar todos os outros

require_relative 'user_manager'
require_relative 'book_manager'
require_relative 'relatory_generator'


userManagerObject = UserManager.new
bookManagerObject = BookManager.new
relatoryGeneratorObject = RelatoryGenerator.new


puts "********* WELCOME TO SBGB v 1.0 ***********\n\n"
puts "\tSELECT THE OPERATION\n"
puts "1.User Manager    2.Book Manager     3.Logs    4. Exit"
selection = gets.chomp.to_i()

if selection == 1
    userManagerObject.inicializador()    
elsif selection == 2
    bookManagerObject.inicializador()
elsif selection == 3
    relatoryGeneratorObject.inicializador() 
else puts "Exiting..."    
end