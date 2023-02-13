x = [95, 85, 80, 70, 60]
y = [85, 95, 70, 65, 70]

x_mean = x.sum / x.length.to_f
y_mean = y.sum / y.length.to_f

cov = var = 0
x.each_with_index do |value, index|
  cov += (y[index] - y_mean) * (value - x_mean)
  var += (value - x_mean) ** 2
end

w1 = cov / var
w0 = y_mean - (w1 * x_mean)

def predict(w0, w1, x)
  w0 + (w1 * x)
end

puts predict(w0, w1, 80).round(3)
