n = gets.strip.to_i
numbers = gets.rstrip.split.map(&:to_i)
mean = numbers.sum / numbers.length
squared_distances = numbers.map! { |element| (element - mean) ** 2 }
standard_deviation = Math.sqrt(squared_distances.sum / squared_distances.size)
puts "%.1f" % standard_deviation
