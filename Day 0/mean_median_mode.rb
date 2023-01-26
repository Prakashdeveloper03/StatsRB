n = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i).sort
mean = numbers.sum.to_f / n
median = if n.odd?
    numbers[n.div(2)]
  else
    (numbers[n.div(2)] + numbers[n.div(2) - 1]).to_f / 2
  end
hash = Hash.new(0)
numbers.sort!.each { |i| hash[i] += 1 }
mode = hash.min_by { |_key, value| -value }[0]
puts format("%.1f\n%.1f\n%d", mean, median, mode)
