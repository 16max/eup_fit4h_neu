class Autor
	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end

	attr_reader :name
	attr_reader :geburtstag
end
