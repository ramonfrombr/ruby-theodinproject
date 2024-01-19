
# MÉTODO 'select' e 'reject'

# Sem usar o método 'select'
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

# Usando o método 'select'
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arun"]

# Usando o método 'reject'
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.reject { |friend| friend == 'Brian' }

# MÉTODO 'each'
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }
#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun
#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]

# friends é o vetor
# .each é o método enumerável
# { |friend| puts "Hello, " + friend } é um bloco
# |friend| é uma variável de bloco

# BLOCO COM MAIS DE UMA LINHA
my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end
#=> The new number is 2.
#=> The new number is 4.
#=> [1, 2]

# USANDO each COM UM DICIONÁRIO
my_hash = { "one" => 1, "two" => 2 }
my_hash.each { |key, value| puts "#{key} is #{value}" }
puts my_hash
# one is 1
# two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }
puts my_hash
# the pair is ["one", 1]
# the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

# O método each não altera o vetor original. A alteração ocorre somente dentro do bloco de repetição
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| friend.upcase }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# MÉTODO each_with_index

# O método each_with_index retorna duas variáveis de bloco: o elemento e o índice do elemento (começando a partir de 0)
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]

# MÉTODO map

# O método each retorna o vetor original
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| friend.upcase }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# Modificando each para alterar o vetor
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []
friends.each { |friend| shouting_at_friends.push(friend.upcase) }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

# O método map altera o vetor de acordo com o código dentro do bloco
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

salaries = [1200, 1500, 1100, 1800]
salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]

# MÉTODO select

# O método select passa cada item do vetor para um bloco e retorna um novo vetor com apenas os itens cuja condição dentro do block resultou em verdadeiro

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []
friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end
# invited_list retorna ["Sharon", "Leo", "Leila", "Arun"]

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

# Lembre que quando você uma um método enumerável com um dicionário, você precisa definir variáveis de bloco para a chave e o valor
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}

# MÉTODO reduce

# O método reduce recebe um vetor ou um dicionário e reduz ele para um único valor. Use o método reduce quando você quer que a saída de dados seja um único valor

# Usando each para calcular a soma de um vetor de números
my_numbers = [5, 6, 7, 8]
sum = 0
my_numbers.each { |number| sum += number }
sum
#=> 26

# Usando reduce para calcular a soma de um vetor de números
my_numbers = [5, 6, 7, 8]
my_numbers.reduce { |sum, number| sum + number }
#=> 26

# A primeira variável de bloco é o acumulador (soma, neste caso). É o resultado de cada iteração é armazenada no acumulador e em seguida é passada para a próxima iteração. O acumulador também é o valor que o método reduce retorna no final. Por padrão, o valor inicial do acumulador é o primeiro elemento na coleção
# 
# Para cada passo da iteração, nós teríamos o seguinte
# 
# Iteração 0: soma = 5 + 6 = 11
# Iteração 1: soma = 11 + 7 = 18
# Iteração 2: soma = 18 + 8 = 26

# Nós também podemos definir um valor inicial para o acumulador passando um valor para o método reduce
my_numbers = [5, 6, 7, 8]
my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

# O método reduce nós permite economizar várias linhas de código em determinados cenários

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1

# Neste exemplo, nós passamos um argumento para Hash.new, e esse argumento se torna o valor inicial quando tentamos acessar chaves que não existem no dicionário

hundreds = Hash.new(100)
hundreds["first"]         #=> 100
hundreds["mine"]          #=> 100
hundreds["yours"]         #=> 100

# Quando você definir de uma chave como sendo alguma coisa, o valor inicial é substituído
hundreds = Hash.new(100)
hundreds["new"]           #=> 100
hundreds["new"] = 99
hundreds["new"]           #=> 99

# Portanto, no exemplo em que contamos os votos e passamos para o método reduce um dicionário com valor inicial 0, isto aconteceu:
# 
# Iteração 0:
#   resultado = {}
#   Lembrese, este dicionário já possui o valor inicial 0, portanto resultado["Restaurante"] == 0 e resultado["Bar"] == 0
#
# Iteração 1:
#   O método reduce executa resultado["Restaurante"] += 1
#   resultado = {“Restaurante” => 1}
#
# Iteração 2:
#   O método reduce executa resultado["Bar"] += 1
#   resultado = {“Restaurante” => 1, “Bar” => 1}
#
# Iteração 3:
#   O método reduce executa resultado["Restaurante"] += 1
#   resultado = {“Restaurante” => 2, “Bar” => 1}
#
# Este exemplo retorna um dicionário com vários pares chave => valor. Ainda que o resultado do código seja mais complicado, #reduce ainda retorna um único objeto, um dicionário.

# MÉTODOS EXCLAMAÇÃO

# Nós aprendemos que métodos enumeraveis como #map e #select retornam um novo vetor mas não modificam os vetores em que foram chamados
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# Para alterar o vetor 'amigos', use o método exclamação #map!
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# Ao invés de retornar um novo vetor, #map! modificou o vetor original
# Todos os métodos exclamação são "destrutivos" e modificam o objeto em que são chamados
# Muitos dos métodos enumeráveis que retornam novas versões dos vetores ou dicionários em que são chamados possuem um versão de método exclamação, como #map! e #select!

# VALORES DE RETORNO DE MÉTODOS ENUMERÁVEIS

# Uma maneira de utilizar o valor de retorno de métodos enumeráveis é atribuindo o valor a uma variável local
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_friends = friends.select { |friend| friend != 'Brian' }
friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]

# Outra opção é envolver o método enumerável em uma função
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end
friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_friends(friends)
#=> ["Sharon", "Leo", "Leila", "Arun"]