# MÉTODOS EMBUTIDOS
"anything".reverse
puts "anything" #=> anything

# CRIANDO UM MÉTODO
def meu_nome
  "Pedro Silva"
end
puts meu_nome    #=> "Pedro Silva"

# NOMES DE MÉTODOS
# metodo_nome      # válido
# _nome_do_metodo  # válido
# 1_metodo_nome    # inválido
# metodo_27        # válido
# metodo?_nome     # inválido
# metodo_nome!     # válido
#begin            # inválido (Palavra reservada do Ruby)
# begin_2      # válido

# PARÂMETROS E ARGUMENTOS
def saudacao(nome)
  "Olá, " + nome + "!"
end
puts saudacao("João") #=> Olá, João!

# PARÂMETROS PADRÃO
def saudacao(nome = "estranho")
  "Olá, " + nome + "!"
end
puts saudacao("Maria") #=> Olá, Maria!
puts saudacao #=> Olá, estranho!

# O QUE MÉTODOS RETORNAM
def meu_nome
  "Pedro Silva"
end
puts meu_nome #=> "Pedro Silva"

# Retornando explicitamente
def meu_nome
  return "Pedro Silva"
end
puts meu_nome #=> "Pedro Silva"

# Ruby retorna a última expressão avaliada mesmo sem o comando return
def par_impar(numero)
  if numero % 2 == 0
    "Isso é um número par."
  else
    "Isso é um número ímpar."
  end
end
puts par_impar(16) #=>  Isso é um número par.
puts par_impar(17) #=>  Isso é um número ímpar.

# Um retorno explícito impede o programa de continuar
def meu_nome
  return "Pedro Silva"
  "Maria Silva"
end
puts meu_nome #=> "Pedro Silva"

# Retorno explícito é útil quando você quer escrever um método que checa erros de entrada de dados antes de continuar
def par_impar(numero)
  unless numero.is_a? Numeric
    return "Um número não foi digitado."
  end

  if numero % 2 == 0
    "Isso é um número par."
  else
    "Isso é um número ímpar."
  end
end
puts par_impar(20) #=>  Isso é um número par.
puts par_impar("Ruby") #=>  Um número não foi digitado.

# Imprime o número mas não retorna o valor
def puts_quadrado(numero)
  puts numero * numero
end # x = puts_quadrado(20), x terá valor 'nil'

def return_quadrado(numero)
  numero * numero
end

x = return_quadrado(20) #=> 400
y = 100
sum = x + y #=> 500
puts "A soma de #{x} e #{y} é #{sum}."
#=> A soma de 400 e 100 é 500.


# COMBINANDO MÉTODOS

frase = ["ser", "não", "ou", "ser"]
puts frase.reverse.join(" ").capitalize
#=> "Ser ou não ser"

["ser", "não", "ou", "ser"].reverse
# = ["ser", "ou", "não", "ser"].join(" ")
# = "ser ou não ser".capitalize
# = "Ser ou não ser"

# MÉTODOS PREDICADOS (RETORNAM VERDADEIRO OU FALSO)

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true
puts 12.between?(10, 15)  #=> true

# MÉTODOS COM PONTO DE EXCLAMAÇÃO
sussurro = "OLÁ TODO MUNDO"
puts sussurro.downcase #=> "olá todo mundo"
puts sussurro #=> "OLÁ TODO MUNDO"
# O método não alterou o valor original da variável

# Para alterar o valor da variável, você pode re-atribuir o valor da variável
sussurro = sussurro.downcase

# Para alterar o valor através do método, adicione um ! no final do método
puts sussurro.downcase! #=> "olá todo mundo"
puts sussurro #=> "olá todo mundo"

# sussurro.downcase! é o mesmo que whisper = whisper.downcase