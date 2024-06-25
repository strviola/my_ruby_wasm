require 'js'
require 'js/require_remote'

JS::RequireRemote.instance.load('./fibonacci.rb')

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
