require 'mathn'
require 'json'

json1 = JSON.parse(File.read ARGV[0])

a = 0
b = 0
c = 0

json1.each do |key, value|
	if key == "a"
		a = value.to_f
		next
	end
	if key == "b"
		b = value.to_f
		next
	end
	if key == "c"
		c = value.to_f
		next
	end
end

x = 0
d = 0

if a == 0
  if b == 0 && c == 0
    puts "Wrong entries for a square equation!"
  else 
    x = -(c / b)
    if x % 1 == 0
      x.to_i
    else
      x.round(2)
    end
  puts "{" + "\n" +  "x: #{x}," + "\n" + "}"  
  end
else
  d = b ** 2 - 4 * a * c
  if d > 0
    x1 = (-b + Math.sqrt(d)) / (2.0 * a)
    x2 = (-b - Math.sqrt(d)) / (2.0 * a)

    puts "{" + "\n" +  "  x1: #{x1}," + "\n" + "  x2: #{x1}," + "\n" + "  D: #{d}" + "\n" + "}"  
  elsif d == 0
    x = -b / (2.0 * a)
    puts "{" + "\n" +  "x: #{x1}," + "\n" + "D: #{d}" + "\n" + "}"
  else 
    puts "D < 0"
  end
 end

