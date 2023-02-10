n = 100
mu = 500
sigma = 80
z = 1.96
sample_std = sigma / Math.sqrt(n)
a = mu - (z * sample_std)
b = mu + (z * sample_std)
puts "#{"%.2f" % a}\n#{"%.2f" % b}"
