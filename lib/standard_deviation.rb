ages = [24, 30, 18, 20, 41]


length = ages.length

mean = ages.sum/ages.length.to_f

minus = []
ages.each do |age|
minus << age.to_f.round - mean
end

square = []
minus.each do |age|
  square << (age ** 2).round(2)
end

squared_sum = square.sum

squared_divide = squared_sum/length

standard_deviation = Math.sqrt(squared_divide).round(2)


p standard_deviation
