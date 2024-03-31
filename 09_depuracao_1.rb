# DEPURANDO COM PUTS
def isograma?(string)
  tamanho_original = string.length
  vetor_de_strings = string.downcase.split
  tamanho_sem_repeticao = vetor_de_strings.uniq.length
  tamanho_original == tamanho_sem_repeticao
end

isograma?("Odin")
#=> false


# irb
# def isograma?(string)
#   tamanho_original = string.length
#   vetor_de_strings = string.downcase.split
#   tamanho_sem_repeticao = vetor_de_strings.uniq.length
# 
#   p tamanho_sem_repeticao
# 
#   tamanho_original == tamanho_sem_repeticao
# end
# isograma?("Odin")
#=> 1
#=> false

# irb
# def isograma?(string)
#   tamanho_original = string.length
#   vetor_de_strings = string.downcase.split
#   
#   p vetor_de_strings
#   
#   tamanho_sem_repeticao = vetor_de_strings.uniq.length
# 
#   p tamanho_sem_repeticao
# 
#   tamanho_original == tamanho_sem_repeticao
# end
# isograma?("Odin")
#=> ["odin"]
#=> 1
#=> false

# Problema: #split divide a string usando espaço em branco como delimitador. Execute o código usando #split('') e veja a diferença.

# DEPURANDO COM puts E nil
puts "Usando puts:"
puts []
p "Usando p:"
p []