
x, n, mu, sigma = 9800, 49, 205, 15
mu_sum = n * mu
sigma_sum = Math.sqrt(n) * sigma

def cdf(x, mu, sigma)
  z = (x - mu) / sigma
  0.5 * (1 + Math.erf(z / (Math.sqrt(2))))
end

puts cdf(x, mu_sum, sigma_sum).round(4)
