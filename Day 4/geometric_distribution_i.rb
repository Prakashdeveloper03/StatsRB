n, d = 1, 3
insp = 5

p = n / d.to_f
q = 1 - p

puts (q ** (insp - 1) * p).round(3)
