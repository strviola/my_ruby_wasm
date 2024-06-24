require 'js'
require 'prime'

primes = Prime.each
display_prime = JS.global[:document].querySelector('#display-prime')
next_button = JS.global[:document].querySelector('#next-prime')
next_button.addEventListener('click') do |_event|
  display_prime.setAttribute('value', primes.next)
end
reset_button = JS.global[:document].querySelector('#clickable-reset')
reset_button.addEventListener('click') do |_event|
  primes = Prime.each
  display_prime.setAttribute('value', '')
end
