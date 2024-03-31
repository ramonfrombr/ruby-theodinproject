require 'pry-byebug'

def gritar_saudacao(string)
  nome = string

  binding.pry

  nome = nome.upcase
  saudacao = "WASSAP, #{nome}!"
  puts saudacao
end

gritar_saudacao("bob")

# next