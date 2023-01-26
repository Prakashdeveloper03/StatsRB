n = gets.strip.to_i
vals = gets.rstrip.split.map(&:to_i)
weights = gets.rstrip.split.map(&:to_i)
puts "%.1f" % [vals.zip(weights).map { |x, y| x * y }.sum.to_f / weights.sum]
