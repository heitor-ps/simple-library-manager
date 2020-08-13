class DatabaseOperations
    require 'mongo'
    Mongo::Logger.logger.level = Logger::FATAL
    $client = Mongo::Client.new('mongodb://127.0.0.1/meuDatabase')

    def guardaDadosUsuario(username, birthday, rg, id)
        collection = $client[:users]
        
        doc = {
            _id: id,
            name: username,
            birthday: birthday,
            rg: rg
        }

        resultado = collection.insert_one(doc)
        resultado.n
        return puts "Sucessfull!"
    end

    def recuperaDadosPorNome(value)
        collection = $client[:users]
        return puts collection.find({name: value}).first()
    end

    def mostraUsuarios()
        collection = $client[:users]
        collection.find.each do |document|
            puts document.to_s
        end
    end  

    def removeDadosUsuario()
        
    end

    def atualizaDadosUsuario()
    end    
end