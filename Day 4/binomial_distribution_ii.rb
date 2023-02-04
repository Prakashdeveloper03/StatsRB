B, G = 12, 10
P = 0.12
Q = 1 - P
N = 10

def factorial(n)
  (1..n).reduce(:*) || 1
end

def get_bin_dist(x)
  return factorial(N) / (factorial(x) * factorial(N - x)) * (P ** x) * (Q ** (N - x))
end

at_most = (0...3).inject(0) { |sum, x| sum + get_bin_dist(x) }.round(3)
at_least = (2..10).inject(0) { |sum, x| sum + get_bin_dist(x) }.round(3)
puts "#{at_most}\n#{at_least}"
