require 'csv'

file = ARGV[0]

data = []
CSV.foreach(file) { |row| data.push(row) }
videos = Hash.new
users = Hash.new

data.each do |info|
	if videos[info[1]] == nil
	  videos[info[1]] = info[2].to_f
	else
	  videos[info[1]] += info[2].to_f
	end
end

puts "#{videos.key(videos.values.max)},#{videos.values.max.round(2)}"