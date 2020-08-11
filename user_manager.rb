#serviço de gerenciamento de usuários

#usuários devem ter um nome, número de cadastro e data de nascimento para
#evitar homônimos

#implementar sistema de cadastro e sistema de consulta
#retificar dados inseridos

class UserManager
    require_relative 'main'
    require_relative 'database_operations'
    $mainMenu = Main.new
    $database = DatabaseOperations.new  
    
    def inicializador()
        puts "\n\n******** Welcome to the User Manager v 1.0 ********\n\n"
        puts "\tSelect the operation:\n"
        puts "1.New User    2.Check Users    3.Update User    4.Delete User    5.Exit to Main App"
        selection = gets.chomp.to_i()

        if selection == 1
            cadastraUsuario()
        elsif selection == 2
            consultaUsuario()
        elsif selection == 3
            atualizaUsuario()
        elsif selection == 4
            removeUsuario()
        elsif selection == 5
            puts "Exitingo to Main App..."
            $mainMenu.mainInicializador()     
        else
            puts "Wrong argument given. Restarting...."
            inicializador()
        end
    end

    def cadastraUsuario()
        puts "Insert user data\n"
        puts "\nUSERNAME (Don't use any symbol)"
        username = gets.chomp()
        puts "\nBIRTHDAY (00/11/2222 format)"
        birthday = gets.chomp()
        puts "\nID NUMBER (only numbers)"
        rg = gets.chomp()

        puts "is this data correct?"
        puts "Received name: #{username}"
        puts "Received birthday: #{birthday}"
        puts "Received id: #{rg}"
        
        if gets.chomp() == "yes"
            puts "Proceding..."
            dataValidator(username,birthday,rg)
            $database.guardaDados(username, birthday, rg, geraNumeroCadastro(rg))
            puts "Finished... Returning to User Manager"
            cadastraUsuario()
        else 
            puts "restart operation?"
            if gets.chomp() == "yes"
                cadastraUsuario()
            else 
                puts "aborting..."
                inicializador()
            end
        end
    end

    def consultaUsuario()
    end
       
    def removeUsuario()
    end 

    def atualizaUsuario()
    end

    def geraNumeroCadastro(value)
        genNumber = rand(1000..9999).to_s
        result = genNumber+value
        return result        
    end

    #Método para fazer uma verificação básica de dados
    def dataValidator(userNameToValidate,birthdayToValidate,rgToValidate)
        nameVerifier = userNameToValidate.gsub(/[^a-zA-Z ]/,"")
        if (nameVerifier.size != userNameToValidate.size || nameVerifier != userNameToValidate)
            puts "Invalid entries at #{userNameToValidate}. Aborting..."            
        end

        birthdayVerifier = birthdayToValidate.gsub(/[a-zA-Z ]/,"")
        if birthdayToValidate.size != 10 || birthdayVerifier.size != birthdayToValidate.size
            puts "Invalid entries at #{birthdayToValidate}. Insert the correct info"
        end

        rgVerifier = rgToValidate.gsub(/[a-zA-Z ]/,"")
        if rgToValidate.size != 7 || rgVerifier.size != rgToValidate.size
            puts "Invalid entries at #{rgToValidate}. Aborting..."            
        end       
    end    
end

#ESSA PARTE AQUI É TESTE DE COISAS AAAAAAAA 
#users[0] = "fulano",23,45
#users[1] = "fulanin", 45, 4545451
#puts users[0].to_s
#puts rand(1000..9999)
#object = UserManager.new
#object.cadastraUsuario()



# str = "aa sdas das$ds"
# compare = str.gsub(/[^a-zA-Z ]/,"")
# puts "String original: #{str}"
# puts "String depois do GSUB: #{compare}"
# puts str.size == compare.size


#A string original tem os caracateres inválidos removidos
# e o resultado disso é armazenado na variável 'compare'.
#posteriormente, o tamanho das strings é verificado e se houver
#discrepância, significa que carateres inválidos foram inseridos
# por erro de digitação ou propositalmente






