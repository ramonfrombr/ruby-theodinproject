# MÉTODOS 'select' E 'reject'

# Sem usar o método 'select'
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
lista_de_convidados = []
for amigo in amigos do
  if amigo != 'Bruno'
  lista_de_convidados.push(amigo)
  end
end
lista_de_convidados #=> ["Maria", "Caio", "Luisa", "Fred"]

# Usando o método 'select'
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.select { |amigo| amigo != 'Bruno' } #=> ["Maria", "Caio", "Luisa", "Fred"]

# Usando o método 'reject'
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.reject { |amigo| amigo == 'Bruno' }

# MÉTODO 'each'
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.each { |amigo| puts "Hello, " + amigo }
#=> Hello, Maria
#=> Hello, Caio
#=> Hello, Luisa
#=> Hello, Bruno
#=> Hello, Fred
amigos #=> ["Maria", "Caio", "Luisa", "Bruno" "Fred"]

# amigos é o vetor
# .each é o método enumerável
# { |amigo| puts "Hello, " + amigo } é um bloco
# |amigo| é uma variável de bloco

# BLOCO COM MAIS DE UMA LINHA
meu_vetor = [1, 2]
meu_vetor.each do |numero|
  numero *= 2
  puts "O novo número é #{numero}."
end
#=> O novo número é 2.
#=> O novo número é 4.
#=> [1, 2]

# USANDO each COM UM DICIONÁRIO
meu_dicionario = { "um" => 1, "dois" => 2 }
meu_dicionario.each { |chave, valor| puts "#{chave} é #{valor}" }
puts meu_dicionario
# um é 1
# dois é 2
#=> { "um" => 1, "dois" => 2}

meu_dicionario.each { |par| puts "o par é #{par}" }
puts meu_dicionario
# o par é ["um", 1]
# o par é ["dois", 2]
#=> { "um" => 1, "dois" => 2}

# O método each não altera o vetor original. A alteração ocorre somente dentro do bloco de repetição
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.each { |amigo| amigo.upcase }
#=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']

# MÉTODO each_with_index

# O método each_with_index retorna duas variáveis de bloco: o elemento e o índice do elemento (começando a partir de 0)
frutas = ["maçã", "banana", "morango", "abacaxi"]
frutas.each_with_index { |fruta, indice| puts fruta if indice.even? }
#=> maçã
#=> morango
#=> ["maçã", "banana", "morango", "abacaxi"]

# MÉTODO map

# O método each retorna o vetor original
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.each { |amigo| amigo.upcase }
#=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']

# Modificando each para alterar o vetor
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
gritando_com_amigos = []
amigos.each { |amigo| gritando_com_amigos.push(amigo.upcase) }
#=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
gritando_com_amigos
#=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

# O método map altera o vetor de acordo com o código dentro do bloco
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.map { |amigo| amigo.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

meu_pedido = ['Big Mac médio', 'batata frita médio', 'milkshake médio']
meu_pedido.map { |item| item.gsub('médio', 'extra largo') }
#=> ['Big Mac extra largo', 'batata frita extra largo', 'milkshake extra largo']

salarios = [1200, 1500, 1100, 1800]
salarios.map { |salario| salario - 700 }
#=> [500, 800, 400, 1100]

# MÉTODO select

# O método select passa cada item do vetor para um bloco e retorna um novo vetor com apenas os itens cuja condição dentro do block resultou em verdadeiro
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
lista_de_convidados = []
amigos.each do |amigo|
  if amigo != 'Bruno'
    lista_de_convidados.push(amigo)
  end
end
# lista_de_convidados retorna ["Maria", "Caio", "Luisa", "Fred"]

amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.select { |amigo| amigo != 'Bruno' }
#=> ["Maria", "Caio", "Luisa", "Fred"]

# Lembre que quando você uma um método enumerável com um dicionário, você precisa definir variáveis de bloco para a chave e o valor
respostas = { 'Maria' => 'sim', 'Caio' => 'não', 'Luisa' => 'não', 'Fred' => 'sim' }
respostas.select { |pessoa, resposta| resposta == 'sim'}
#=> {"Maria"=>"yes", "Fred"=>"yes"}

# MÉTODO reduce

# O método reduce recebe um vetor ou um dicionário e reduz ele para um único valor. Use o método reduce quando você quer que a saída de dados seja um único valor

# Usando each para calcular a soma de um vetor de números
meus_numeros = [5, 6, 7, 8]
soma = 0
meus_numeros.each { |numero| soma += numero }
soma
#=> 26

# Usando reduce para calcular a soma de um vetor de números
meus_numeros = [5, 6, 7, 8]
meus_numeros.reduce { |soma, numero| soma + numero }
#=> 26

# A primeira variável de bloco é o acumulador (soma, neste caso). É o resultado de cada iteração é armazenada no acumulador e em seguida é passada para a próxima iteração. O acumulador também é o valor que o método reduce retorna no final. Por padrão, o valor inicial do acumulador é o primeiro elemento na coleção
# 
# Para cada passo da iteração, nós teríamos o seguinte
# 
# Iteração 0: soma = 5 + 6 = 11
# Iteração 1: soma = 11 + 7 = 18
# Iteração 2: soma = 18 + 8 = 26

# Nós também podemos definir um valor inicial para o acumulador passando um valor para o método reduce
meus_numeros = [5, 6, 7, 8]
meus_numeros.reduce(1000) { |soma, numero| soma + numero }
#=> 1026

# O método reduce nós permite economizar várias linhas de código em determinados cenários
votos = ["Restaurante", "Bar", "Restaurante"]
votos.reduce(Hash.new(0)) do |resultado, voto|
  resultado[voto] += 1
  resultado
end
#=> {"Restaurante"=>2, "Bar"=>1}

# Neste exemplo, nós passamos um argumento para Hash.new, e esse argumento se torna o valor inicial quando tentamos acessar chaves que não existem no dicionário
centenas = Hash.new(100)
centenas["primeiro"]       #=> 100
centenas["meu"]            #=> 100
centenas["teu"]            #=> 100

# Quando você definir de uma chave como sendo alguma coisa, o valor inicial é substituído
centenas = Hash.new(100)
centenas["novo"]           #=> 100
centenas["novo"] = 99
centenas["novo"]           #=> 99

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
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.map { |amigo| amigo.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
amigos
#=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']

# Para alterar o vetor 'amigos', use o método exclamação #map!
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos.map! { |amigo| amigo.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
amigos
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# Ao invés de retornar um novo vetor, #map! modificou o vetor original
# Todos os métodos exclamação são "destrutivos" e modificam o objeto em que são chamados
# Muitos dos métodos enumeráveis que retornam novas versões dos vetores ou dicionários em que são chamados possuem um versão de método exclamação, como #map! e #select!

# VALORES DE RETORNO DE MÉTODOS ENUMERÁVEIS

# Uma maneira de utilizar o valor de retorno de métodos enumeráveis é atribuindo o valor a uma variável local
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos_convidados = amigos.select { |amigo| amigo != 'Bruno' }
amigos            #=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos_convidados #=> ["Maria", "Caio", "Luisa", "Fred"]

# Outra opção é envolver o método enumerável em uma função
amigos = ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
def amigos_convidados(amigos)
  amigos.select { |amigo| amigo != 'Bruno' }
end
amigos                    #=> ['Maria', 'Caio', 'Luisa', 'Bruno', 'Fred']
amigos_convidados(amigos) #=> ["Maria", "Caio", "Luisa", "Fred"]