n = gets.strip.to_i
numbers = gets.rstrip.split.map(&:to_i).sort
q2 = if n.odd?
    numbers[n.div(2)]
  else
    (numbers[n.div(2)] + numbers[n.div(2) - 1]).to_f / 2
  end
lower = numbers.slice(0...n.div(2))
upper = if n.odd?
    numbers.slice(n.div(2) + 1...)
  else
    numbers.slice(n.div(2)...)
  end
n_lower = lower.length
n_upper = upper.length
q1 = if n_lower % 2 != 0
    lower[n_lower.div(2)]
  else
    (lower[n_lower.div(2)] + lower[n_lower.div(2) - 1]) / 2
  end

q3 = if n_upper % 2 != 0
    upper[n_upper.div(2)]
  else
    (upper[n_upper.div(2)] + upper[n_upper.div(2) - 1]) / 2
  end
puts format("%d\n%d\n%d", q1, q2, q3)
