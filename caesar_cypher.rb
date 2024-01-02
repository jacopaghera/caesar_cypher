
def caesar_cipher(string, shift_factor)
  result = ""
  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      position = char.downcase.ord - 'a'.ord+1 + shift_factor
      result += position.chr
    else
      result += char
    end
  end
  puts result
end

caesar_cipher("Ciao sono Jacopo!", 3)