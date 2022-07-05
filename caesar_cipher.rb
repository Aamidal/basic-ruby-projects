#caesar_cipher.rb

# def caesar_cipher(string, shift_value)
#   shifted = []
#   letters = string.split("")
#   letters.each do |letter|
#     value = letter.ord
#     new_value = value + shift_value
#     if (value).between(65, 90)
#       if (new_value) > 90
#         shifted.push(new_value.chr)
#       else
#         ((new_value % 90) + 65)
#
# This is not very elegant. Let's try an array.


def caesar_cipher(string, shift_value)
  alphabet = []
  26.times {|i| alphabet.push((97+i).chr)}
  characters = string.split("")
  shifted_msg = []
  characters.each do |char|
    if alphabet.include?(char.downcase)
      shift_index = alphabet.find_index(char.downcase) + shift_value
      unless shift_index.between?(-25, 25)
        if shift_index < 0
          shift_index = shift_index % -26
        else
          shift_index = shift_index % 26
        end
      end
      if char.ord.between?(65, 90)
        shifted_msg.push(alphabet[shift_index].upcase)
      else
        shifted_msg.push(alphabet[shift_index])
      end
    else 
      shifted_msg.push(char)
    end
  end
  puts "Shifting #{string} by #{shift_value} letters:"
  puts shifted_msg.join("")
  shifted_msg.join("")
end

caesar_cipher("Stephen Maturin is a spy!", 18)
caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 100)
caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", -1)
caesar_cipher("Hello, world!", -25)


      
