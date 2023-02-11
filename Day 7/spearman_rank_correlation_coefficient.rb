def get_rank(l)
  set_l = l.sort.uniq
  l.map { |_l| set_l.index(_l) + 1 }
end

n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

rx = get_rank(x)
ry = get_rank(y)

r = 1 - ((6 * (0...n).inject(0) { |sum, i| sum + (rx[i] - ry[i]) ** 2 } ) / (n * (n ** 2 - 1)))
puts format("%.3f", r)
