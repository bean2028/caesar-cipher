require 'pry-byebug'

puts "Enter a phrase to be encypted:"
user_input = gets.chomp

puts "Enter a shift value for the phrase:"
user_shift = gets.chomp

def caesar_cipher(input_string, shift)
  array = input_string.split("")
  binding.pry
end

caesar_cipher(user_input, user_shift)
