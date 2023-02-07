l = 2.5
k = 5
e = Math::E

puts(((l ** k * e ** (-l)) / (1..k).inject(:*)).round(3))
