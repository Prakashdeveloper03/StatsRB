n, d = 1, 3
insp = 5

p = n / d.to_f
q = 1 - p

puts (1..insp).reduce(0) { |sum, i| sum + q ** (i - 1) * p }.round(3)
