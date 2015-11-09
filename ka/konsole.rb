require_relative 'autor'
require_relative 'bibliothek'
require_relative 'buch'
require_relative 'buecherverleih'

autor_1 = Autor.new("Maier", "20.03.1980")

bibliothek = Bibliothek.new("Hamburg")

buch_1 = Buch.new(autor_1.name, "Niemand", 2005)
buch_2 = Buch.new(autor_1.name, "Jeder", 2010)
buch_3 = Buch.new(autor_1.name, "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor_1.name, "Morgen ist auch noch ein Tag", 2011)

bibliothek.add_buch(buch_1.autor[0], buch_1.titel, buch_1.gekauft_am)
bibliothek.add_buch(buch_2.autor[0], buch_2.titel, buch_2.gekauft_am)
bibliothek.add_buch(buch_3.autor[0], buch_3.titel, buch_3.gekauft_am)
bibliothek.add_buch(buch_4.autor[0], buch_4.titel, buch_4.gekauft_am)

puts bibliothek

bibliothek.buch_aktion(2014)
