
require 'pry-byebug'

class String
  def is_upper?
    self == self.upcase
  end
end

def caesar_cipher(string, shift_factor)
  result = ""
  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      position = char.downcase.ord + 1 + shift_factor
      if char.is_upper? == true
        result += position.chr.upcase
      else
        result += position.chr
      end
    else
      result += char
    end
  end
  puts result
end


caesar_cipher("Ciao sono Jacopo!", 3)