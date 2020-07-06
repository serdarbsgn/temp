Pi = 3

puts "Lütfen silindirin yarıçap(r) değerini giriniz?: "
r = gets.to_i
puts "Lütfen silindirin yükseklik(h) değerini giriniz?: "
h = gets.to_i
area = 2*Pi*r*h
volume = Pi*r*r*h
puts "Silindirin Alani #{area} ve Hacmi #{volume}'dir"

puts "Carpim Tablosu...\n================="
for i in 1..10
	for x in 1..10
		print i*x , "\t"
	end
	puts ""
end
