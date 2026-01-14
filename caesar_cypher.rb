require 'pry-byebug'

class String
  def is_upper?
    self == upcase
  end
end

def caesar_cipher(string, shift_factor)
  result = ''
  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      position = char.downcase.ord + shift_factor
      position = 97 + (position - 123) if position >= 123
      result += if char.is_upper? == true
                  position.chr.upcase
                else
                  position.chr
                end
    else
      result += char
    end
  end
  puts result
end

caesar_cipher('Ciao sono Jacopo!', 3)
