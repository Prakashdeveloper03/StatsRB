def probability(x, mu = 20, std = 2)
  return (1 + Math.erf((x - mu) / (std * Math.sqrt(2)))) / 2
end

puts "%.3f\n%.3f" % [probability(19.5), probability(22) - probability(20)]
