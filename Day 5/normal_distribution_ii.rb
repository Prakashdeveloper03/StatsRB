def probability(x, mu = 70, std = 10)
  return ((1 + Math.erf((x - mu) / (std * Math.sqrt(2)))) / 2) * 100
end

higher = 100 - probability(80)
passed = 100 - probability(60)
failed = probability(60)

puts "%.2f\n%.2f\n%.2f" % [higher, passed, failed]
