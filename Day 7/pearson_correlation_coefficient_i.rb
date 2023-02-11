def get_std(l, mu, n)
  Math.sqrt(l.reduce(0) { |sum, val| sum + (val - mu) ** 2 } / n)
end

n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

mu_x = x.reduce(:+) / n
std_x = get_std(x, mu_x, n)

mu_y = y.reduce(:+) / n
std_y = get_std(y, mu_y, n)

coef = (0...n).reduce(0) { |sum, i| sum + (x[i] - mu_x) * (y[i] - mu_y) } / (n * std_x * std_y)
puts '%.3f' % coef
