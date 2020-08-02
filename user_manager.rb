#serviço de gerenciamento de usuários

#usuários devem ter um nome, número de cadastro e data de nascimento para
#evitar homônimos

#implementar sistema de cadastro e sistema de consulta
#retificar dados inseridos

class UserManager

    def inicializador()
        puts "\n\n******** Welcome to the User Manager v 1.0 ********\n\n"
        puts "\tSelect the operation:\n"
        puts "1.New User    2.Check Users    3.Delete Users\n\n"
        selection = gets.chomp.to_i()

        if selection == 1
            cadastraUsuario()            
        elsif selection == 2
            consultaUsuario()
        elsif selection == 3
            removeUsuario()
        else
            puts "Wrong argument given. Restarting...."
            inicializador()         
        end       
    end

    #Primeiro Método Principal
    def cadastraUsuario()       
        puts "Insert user data\n"
        puts "\nUSERNAME"
        username = gets.chomp()
        puts "\nBIRTHDAY"
        birthday = gets.chomp()
        puts "\nID NUMBER"
        rg = gets.chomp()
        dataValidator(username,birthday,rg)
        
        puts "is this data correct?"
        puts "Received name: #{username}"
        puts "Received birthday: #{birthday}"
        puts "Received id: #{rg}"    

        if gets.chomp() == "yes"
            puts "proceding..."        
        else 
            puts "restart operation?"            
            if gets.chomp() == "yes"
                cadastraUsuario()
            else puts "aborting..."
            end           
        end
    end
    #

    #Segundo Método Principal
    def consultaUsuario()
    end
    #

    #Terceiro Método Principal
    def removeUsuario()
    end
    #

    #Métodos Secundários (Verificação de dados, armazenamento de info etc)

    def guardaDados(value)
        users = Hash.new
        users << value
    end

    def geraNumeroCadastro()
        genNumber = rand(1000..9999)
        return genNumber
    end

    def dataValidator(userNameToValidate,birthdayToValidate,rgToValidate)        
        nameVerifier = userNameToValidate.gsub(/[^a-zA-Z ]/,"")

        if nameVerifier.size != userNameToValidate.size
            puts "Invalid character(s) at #{userNameToValidate}. Aborting..."
            cadastraUsuario()
        end
    end
    #continuar implementando validadores   
end

#ESSA PARTE AQUI É TESTE DE COISAS AAAAAAAA 
#users[0] = "fulano",23,45
#users[1] = "fulanin", 45, 4545451
#puts users[0].to_s
#puts rand(1000..9999)
#object = UserManager.new
#object.cadastraUsuario()

str = "aa sdas das$ds"
compare = str.gsub(/[^a-zA-Z ]/,"")
puts "String original: #{str}"
puts "String depois do GSUB: #{compare}"
puts str.size == compare.size


#A string original tem os caracateres inválidos removidos
# e o resultado disso é armazenado na variável 'compare'.
#posteriormente, o tamanho das strings é verificado e se houver
#discrepância, significa que carateres inválidos foram inseridos
# por erro de digitação ou propositalmente






