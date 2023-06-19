require 'pry-byebug'

puts "Enter a phrase to be encypted:"
user_input = gets.chomp

puts "Enter a shift value for the phrase:"
user_shift = gets.chomp.to_i

def caesar_cipher(input_string, shift)
  array = input_string.split("").map { |char| char.ord }
  shift_array = array.map do |num|
    if (num <= 91 && num >= 66)
      (num + shift - 65) % 26 + 65
    elsif (num <= 123 && num >= 97)
      (num + shift - 97) % 26 + 97
    else
      num
    end
  end
  encrypted_string = shift_array.map{ |num| num.chr(Encoding::ASCII)}.join
  puts "Your encrypted phrase is #{encrypted_string}"
end

caesar_cipher(user_input, user_shift)
