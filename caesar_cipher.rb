#caesar_cipher.rb

def caesar_cipher(string, shift_value)
  alphabet = []
  26.times {|i| alphabet.push((97+i).chr)}
  characters = string.split("")
  shifted_msg = []
  characters.each do |char|
    if alphabet.include?(char.downcase)
      shift_index = wrap_index(alphabet.find_index(char.downcase) + shift_value)
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

def wrap_index(shift_index)
  index = shift_index
  if index < 0
    index = shift_index % -26
  else
    index = shift_index % 26
  end
end

# Testing
# 26.times {|i| caesar_cipher("Stephen Maturin is a spy!", i)}
# 26.times {|i| caesar_cipher("Stephen Maturin is a spy!", -i)}
# 26.times {|i| caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i)}
# 26.times {|i| caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ", -i)}

      
