class Buch
	def initialize(autor, titel, gekauft_am)
		@autor = []
		@autor << autor
		@titel = titel
		@gekauft_am = gekauft_am
	end

	attr_reader :autor
	attr_reader :titel
	attr_accessor :gekauft_am
	def autor=(autor)
		@autor << autor
	end
end
