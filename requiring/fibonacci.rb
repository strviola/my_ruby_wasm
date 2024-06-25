class FibonacciGenerator
  attr_reader :first, :second

  def initialize(first = 1, second = 1)
    reset(first, second)
  end

  def reset(first = 1, second = 1)
    @first = first
    @second = second
  end

  def next
    sum = @first + @second
    @first = @second
    @second = sum
    sum
  end
end
