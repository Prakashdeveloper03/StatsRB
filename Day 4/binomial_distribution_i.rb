B, G = 1.09, 1
P = B / (B + 1)
Q = 1 - P
N = 6

def factorial(n)
  (1..n).reduce(:*) || 1
end

def get_bin_dist(x)
  return factorial(N) / (factorial(x) * factorial(N - x)) * (P ** x) * (Q ** (N - x))
end

proportion = (3..6).inject(0) { |sum, x| sum + get_bin_dist(x) }.round(3)
puts proportion
