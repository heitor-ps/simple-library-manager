class DatabaseOperations
    require 'mongo'
    Mongo::Logger.logger.level = Logger::FATAL
    $client = Mongo::Client.new('mongodb://127.0.0.1/meuDatabase')
   
    
    def guardaDados(username, birthday, rg, id)
        collection = $client[:users]
        
        doc = {
            _id: id,
            name: username,
            birthday: birthday,
            rg: rg
        }

        resultado = collection.insert_one(doc)
        resultado.n
    end

    def recuperaDados()
    end

    def removeDados()
    end

    def atualizaDados()
    end
    
end