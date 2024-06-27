def caesar_cipher(plaintext, key)
  plaintext_arr = plaintext.split("")
  ciphered_text_arr = plaintext_arr.map do |char|
    unless (char.ord >= 65 && char.ord <= 90) || (char.ord >= 97 && char.ord <= 122)
      char
    else
      (char.ord + key).chr
    end
  end
  ciphered_text_arr.join
end

puts caesar_cipher("abc123!!!", 5)

