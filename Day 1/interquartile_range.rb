n = gets.strip.to_i
elements = gets.rstrip.split
frequencies = gets.rstrip.split.map(&:to_i)
numbers = Array.new
elements.zip(frequencies).each { |e, f| numbers += Array.new([e] * f).map(&:to_i) }
numbers = numbers.sort
n = numbers.length
lower = numbers.slice(0...n.div(2))
upper = if n.odd?
    numbers.slice(n.div(2) + 1...)
  else
    numbers.slice(n.div(2)...)
  end
n_lower = lower.length
n_upper = upper.length
q1 = if n_lower % 2 != 0
    lower[n_lower.div(2)]
  else
    (lower[n_lower.div(2)] + lower[n_lower.div(2) - 1]) / 2
  end
q3 = if n_upper % 2 != 0
    upper[n_upper.div(2)]
  else
    (upper[n_upper.div(2)] + upper[n_upper.div(2) - 1]) / 2
  end
puts "%.1f" % (q3 - q1)
