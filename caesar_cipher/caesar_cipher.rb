#caesar_cipher.rb

def caesar_cipher(string, key)
  encoded_msg = ''
  string.each_char do |char|
    enc_char = char.ord < 91 ? 65 : 97
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      shift = (((char.ord - enc_char) + key) % 26) + enc_char
      encoded_msg += shift.chr
    else 
      encoded_msg += char
    end
  end
  encoded_msg
end

# 26.times {|i| puts caesar_cipher("Stephen Maturin is a spy!", i)}

      
