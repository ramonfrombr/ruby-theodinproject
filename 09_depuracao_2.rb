require 'pry-byebug'

# Um isograma é uma palavra onde nenhum caractere ocorre mais de uma vez

def isograma?(string)
  tamanho_original = string.length
  vetor_de_strings = string.downcase.split

  binding.pry

  tamanho_sem_repeticao = vetor_de_strings.uniq.length
  tamanho_original == tamanho_sem_repeticao
end

isograma?("Odin")