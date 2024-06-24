require 'bundler/setup'
require 'rainbow'

puts Rainbow('Hello RubyGems').green + ' with ' +
       Rainbow('WebAssembly').underline.bright + '!'
