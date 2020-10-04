Pi = 3

puts "Please enter the radius(r) of the cylinder: "
r = gets.to_i
puts "Please enter the height(h) of the cylinder: "
h = gets.to_i
area = 2*Pi*r*h
volume = Pi*r*r*h
puts "Surface area of the cylinder is #{area} and the volume is #{volume}"

puts "Multiplication Table...\n================="
for i in 1..10
	for x in 1..10
		print i*x , "\t"
	end
	puts ""
end
