class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.sort.last
  end

  def min_age
    @ages.sort.first
  end

  def average_age
    @ages.sum.to_f / @ages.count
  end

  def standard_deviation_age
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
    standard_deviation
  end
end
