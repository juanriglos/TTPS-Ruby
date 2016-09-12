class GenericFactory
 	def self.create(**args)
 		new(**args)
 	end
	 def initialize(**args)
		 raise NotImplementedError
 	end
end


class Hijo < GenericFactory
	def initialize(**args)
		puts 'Soy instancia de Hijo'
	end

end

a = Hijo.create
a