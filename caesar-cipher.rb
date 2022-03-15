def caesar_cipher(string, shift)
  new_string = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  string.each_char { 
    |character| 
    if alphabet.include?(character.downcase)
      char_location = alphabet.index(character.downcase).to_i
      new_location = char_location + shift
      if new_location > 25
        new_location = new_location - 26
      end
      new_character = alphabet[new_location]
      if alphabet.include?(character)
        new_string << new_character
      else
        new_string << new_character.upcase
      end
    else
      new_string << character
    end
  }
  puts new_string
  # return new_string
end

# caesar_cipher("What a string!", 5)

puts "Input string:"

string = gets.chomp

puts "Input shift amount (whole numbers only):"

shift = gets.chomp.to_i

caesar_cipher(string, shift)