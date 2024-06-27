def caesar_cipher(plaintext, key)
  plaintext_arr = plaintext.split("")
  ciphered_text_arr = plaintext_arr.map do |char|
    if char.ord >= 65 && char.ord <= 90
      ciphered_char_ord = ((char.ord + key - 64) % 26) + 64
      ciphered_char_ord.chr
    elsif char.ord >= 97 && char.ord <= 122
      ciphered_char_ord = ((char.ord + key - 96) % 26) + 96
      ciphered_char_ord.chr
    else
      char
    end
  end
  ciphered_text_arr.join
end

puts caesar_cipher("XYZ!!!", 5)

