# DEPURANDO COM PUTS
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
#=> false


# irb
# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split
#   unique_length = string_array.uniq.length
# 
#   p unique_length
# 
#   original_length == unique_length
# end
# isogram?("Odin")
#=> 1
#=> false


# irb
# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split
#   
#   p string_array
#   
#   unique_length = string_array.uniq.length
# 
#   p unique_length
# 
#   original_length == unique_length
# end
# isogram?("Odin")
#=> ["odin"]
#=> 1
#=> false

# Problema: #split divide a string usando whitespace como delimitador. Execute o código usando #split('') e veja a diferença.

# DEPURANDO COM puts E nil
puts "Using puts:"
puts []
p "Using p:"
p []