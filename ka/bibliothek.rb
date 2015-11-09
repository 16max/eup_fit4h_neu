class Bibliothek
	def initialize(name)
		@name = name
		@buecher = []
	end

	attr_reader :name
	attr_reader :buecher
	def buecher=(buch)
		@buecher << buch
	end

	def add_buch(buch_autor, buch_titel, buch_gekauft_am)
		@buecher << "#{buch_autor}, #{buch_titel}, #{buch_gekauft_am}"
	end

	def buch_aktion(jahr)
		keine_aktion = []
		kontrolle = []
		restauration = []

		@buecher.size.times do |i|
			if (jahr - @buecher[i].split(',').last.to_i) < 2
				keine_aktion << @buecher[i]
			elsif (jahr - @buecher[i].split(',').last.to_i) < 5
				kontrolle << @buecher[i]
			else
				restauration << @buecher[i]
			end
		end
		if keine_aktion.size == 1
			puts "1 Buch bei dem keine Aktion noetig ist:\n#{keine_aktion[0]}"
		else
			puts "#{keine_aktion.size} Buecher bei denen keine Aktionen noetig sind:\n"
			keine_aktion.each { |buch| puts buch }
		end
		if kontrolle.size == 1
			puts "1 Buch bei dem eine Kontrolle noetig ist:\n#{kontrolle[0]}"
		else
			puts "#{kontrolle.size} Buecher bei denen eine Kontrolle noetig ist:\n"
			kontrolle.each { |buch| puts buch }
		end
		if restauration.size == 1
			puts "1 Buch das in die Restauration geht:\n#{restauration[0]}"
		else
			puts "#{restauration.size} Buecher die in die Restauration gehen:\n"
			restauration.each { |buch| puts buch }
		end
	end

	def to_s
		"#{@buecher[0]}\n#{@buecher[1]}\n#{@buecher[2]}\n#{@buecher[3]}"
	end
end
