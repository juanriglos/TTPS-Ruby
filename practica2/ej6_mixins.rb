module GenericFactory
 	def create(**args)
 		new(**args)
 	end
	 def initialize(**args)
		 raise NotImplementedError
 	end
end


class Hijo 
	extend GenericFactory
	def initialize(**args)
		puts 'Soy instancia de Hijo'
	end

end

a = Hijo.create
a