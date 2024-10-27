# CONSTANTS: ASCII code of the limit characters of the roman alphabet
# rubocop: disable Naming/ConstantName
ORD_a = 'a'.ord # 97
ORD_z = 'z'.ord # 122
# rubocop: enable Naming/ConstantName
ORD_A = 'A'.ord # 65
ORD_Z = 'Z'.ord # 90

# Displacement of the order of the character
# It accepts positive or negative values
OFFSET = -12; # You can change this value

def enter_phrase
  puts 'Please enter the phrase you want to cipher:'
  gets.chomp
end

# I know, I know!: the correct word is "cipher", not "cypher" But now I don´t want to change a code that is working perfectly!
def caesar_cypher(string, offset)
  response = ''
  for i in 0..string.length - 1 do
    ascii = string[i].ord
    if ascii >= ORD_a && ascii <= ORD_z
      # lowcase
      response.concat(lowcase_change(ascii, offset))

    elsif ascii >= ORD_A && ascii <= ORD_Z
      # upcase
      response.concat(upcase_change(ascii, offset))
    else
      # No alphabetical character => no changes
      response.concat(string[i])
    end
  end
  response
end

def upcase_change(ascii, offset)
  ascii += offset
  if ascii > ORD_Z
    ascii -= (ORD_Z - ORD_A + 1)
  elsif ascii < ORD_A
    ascii += (ORD_Z - ORD_A + 1)
  end
  ascii.chr
end

def lowcase_change(ascii, offset)
  ascii += offset
  if ascii > ORD_z
    ascii -= (ORD_z - ORD_a + 1)
  elsif ascii < ORD_a
    ascii += (ORD_z - ORD_a + 1)
  end
  ascii.chr
end

def main_program
  phrase = enter_phrase
  puts 'Your phrase ciphered with Caesar system is:'
  puts caesar_cypher(phrase, OFFSET)
end

main_program
