# frozen_string_literal: true

def caesar_cipher(plaintext, key)
  plaintext.split('').map { |char| cipher_char(char, key) }.join
end

def cipher_char(char, key)
  if char.ord.between?(65, 90)
    (((char.ord + key - 64) % 26) + 64).chr
  elsif char.ord.between?(97, 122)
    (((char.ord + key - 96) % 26) + 96).chr
  else
    char
  end
end

puts caesar_cipher('XYZ!!!', 31)

