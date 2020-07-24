#serviço de gerenciamento de usuários


#usuários devem ter um nome, número de cadastro e data de nascimento para
#evitar homônimos

#implementar sistema de cadastro e sistema de consulta
#verificar rng para criação de número de cadastro


class UserManager
    i=0
    users = Hash.new
   #users[0] = "fulano",23,45
   #users[1] = "fulanin", 45, 4545451
    #puts users[0].to_s
    #puts rand(1000..9999)
    

    def geraNumeroCadastro()
        genNumber = rand(1000..9999)
        return genNumber
    end

    def dataValidator(userNameValidate,birthdayValidate,rgValidate)        
       verifier = userNameValidate.gsub(/[^a-zA-Z ]/,"")

       if verifier.size == userNameValidate.size
            users[i] << userNameValidate        
       else
            puts "Invalid character(s) at #{userNameValidate}. Aborting..."
            cadastraUsuario()
       end

    end

    def consultaUsuario()
    end
    
    private
    def cadastraUsuario()
        #users = Hash.new

        puts "insert user data"
        puts "username"
        username = gets.chomp
        puts "birthday"
        birthday = gets.chomp
        puts "id number"
        rg = gets.chomp
        validator(username,birthday,rg)
        
        puts "is this data correct?"
        puts "Received name: #{username}"
        puts "Received birthday: #{birthday}"
        puts "Received id: #{rg}"    

        if gets.chomp == "yes"
            puts "proceding..."        
        else 
            puts "restart operation?"            
            if gets.chomp == "yes"
                cadastraUsuario()
            else puts "aborting..."
            end           
        end
    end
    def removeUsuario
    end

end

#object = UserManager.new
#object.cadastraUsuario()

str = "aasdasdasds"
compare = str.gsub(/[^a-zA-Z ]/,"")
puts str.size == compare.size






