require 'js'

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

clickable = JS.global[:document].querySelector('#next-number')
display_number = JS.global[:document].querySelector('#display-number')
fibonacci = FibonacciGenerator.new
clickable.addEventListener('click') do |_event|
  display_number.setAttribute('value', fibonacci.next)
end
reset_button = JS.global[:document].querySelector('#clickable-reset')
reset_button.addEventListener('click') do |_event|
  fibonacci.reset
  display_number.setAttribute('value', 1)
end
