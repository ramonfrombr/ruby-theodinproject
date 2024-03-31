# MÉTODOS ENUMERÁVEIS PREDICADOS

# Métodos predicados são indicados por um ponto de interrogação no final do nome do método e o método retorna true ou false
# Eles são:
# 
# include?
# any?
# all?
# none?

# MÉTODO include? (inclui?)

numeros = [5, 6, 7, 8]
elemento = 6
resultado = false
numeros.each do |numero|
  if numero == elemento
    resultado = true
    break
  end
end
puts resultado
# => true

elemento = 3
resultado = false
numeros.each do |numero|
  if numero == elemento
    resultado = true
    break
  end
end
puts resultado
#=> false

# Nos exemplos acima existe um comando break na condição if para que a repetição pare assim que o número for encontrado

# Usar o método include? torna o código acima mais simplificado
numeros = [5, 6, 7, 8]
numeros.include?(6)
#=> true
numeros.include?(3)
#=> false

amigos = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
lista_de_convidados = amigos.select { |amigo| amigo != 'Brian' }
lista_de_convidados.include?('Brian')
#=> false

# MÉTODO any? (algum?)

numeros = [21, 42, 303, 499, 550, 811]
resultado = false
numeros.each do |numero|
  if numero > 500
    resultado = true
    break
  end
end
puts resultado
#=> true

numeros = [21, 42, 303, 499, 550, 811]
resultado = false
numeros.each do |numero|
  if numero < 20
    resultado = true
    break
  end
end
puts resultado
#=> false

# Usar o método any? permite checar se algum elemento satisfaz a condição dentro do bloco
numeros = [21, 42, 303, 499, 550, 811]
numeros.any? { |numero| numero > 500 }
#=> true
numeros.any? { |numero| numero < 20 }
#=> false

# MÉTODO all? (todos?)

# O método all? retorna true se todos os elementos do vetor ou dicionário satisfazem a condição definida dentro do bloco. Senão, retorna false

frutas = ["maçã", "banana", "morango", "abacaxi"]
correspondentes = []
resultado = false
frutas.each do |fruta|
  if fruta.length > 3
    correspondentes.push(fruta)
  end
end
resultado = frutas.length == correspondentes.length
puts resultado
#=> true

frutas = ["maçã", "banana", "morango", "abacaxi"]
correspondentes = []
resultado = false
frutas.each do |fruta|
  if fruta.length > 6
    correspondentes.push(fruta)
  end
end
resultado = frutas.length == correspondentes.length
puts resultado
#=> false

# Usar o método all? torna o código acima simplificado
frutas = ["maçã", "banana", "morango", "abacaxi"]
frutas.all? { |fruta| fruta.length > 3 }
#=> true
frutas.all? { |fruta| fruta.length > 6 }
#=> false

# O método #all? vai retornar true por padrão ao menos que o bloco retorne 'false' ou 'nil'. Se você chamar o método #all? em um vetor ou dicionário vazio, ele retorna 'true'

# MÉTODO none? (nenhum?)

# O método #none? retorna 'true' apenas se a condição dentro do bloco satisfaz nenhum dos elementos do vetor ou dicionário. Senão, retorna falso. 'none' significa 'nenhum' em inglês

frutas = ["maçã", "banana", "morango", "abacaxi"]
resultado = false
frutas.each do |fruta|
  if fruta.length > 10
    resultado = false
    break
  end
  resultado = true
end
puts resultado
#=> true

frutas = ["maçã", "banana", "morango", "abacaxi"]
resultado = false
frutas.each do |fruta|
  if fruta.length > 6
    resultado = false
    break
  end
  resultado = true
end
puts resultado
#=> false

# Usar o método #none? torna o código acima simplificado
frutas = ["maçã", "banana", "morango", "abacaxi"]
frutas.none? { |fruta| fruta.length > 10 }
#=> true
frutas.none? { |fruta| fruta.length > 6 }
#=> false