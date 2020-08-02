#serviço para chamar todos os outros

require_relative 'user_manager'
require_relative 'book_manager'
require_relative 'relatory_generator'

puts "********* WELCOME TO SBGB v 1.0 ***********\n\n"
puts "\tSELECT THE OPERATION:\n"
puts "1.User Manager    2.Book Manager     3.Logs\n\n"


userManager = UserManager.new
userManager.inicializador()
