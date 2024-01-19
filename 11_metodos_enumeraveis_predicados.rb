# MÉTODOS ENUMERÁVEIS PREDICADOS

# Métodos predicados são indicados por um ponto de interrogação no final do nome do método e o método retorna true ou false
# Eles são:
# 
# include?
# any?
# all?
# none?

# MÉTODO include?

numbers = [5, 6, 7, 8]

element = 6
result = false
numbers.each do |number|
  if number == element
    result = true
    break
  end
end
result
# => true

element = 3
result = false
numbers.each do |number|
  if number == element
    result = true
    break
  end
end
result
#=> false

# Nos exemplos acima existe um comando break na condição if para que a repetição pare assim que o número for encontrado

# Usar o método include? torna o código acima mais simplificado
numbers = [5, 6, 7, 8]
numbers.include?(6)
#=> true
numbers.include?(3)
#=> false

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
invited_list.include?('Brian')
#=> false

# MÉTODO any?

numbers = [21, 42, 303, 499, 550, 811]
result = false
numbers.each do |number|
  if number > 500
    result = true
    break
  end
end
result
#=> true

numbers = [21, 42, 303, 499, 550, 811]
result = false
numbers.each do |number|
  if number < 20
    result = true
    break
  end
end
result
#=> false

# Usar o método any? permite checar se algum elemento satisfaz a condição dentro do bloco
numbers = [21, 42, 303, 499, 550, 811]
numbers.any? { |number| number > 500 }
#=> true
numbers.any? { |number| number < 20 }
#=> false

# MÉTODO all?

# O método all? retorna true se todos os elementos do vetor ou dicionário satisfazem a condição definida dentro do bloco. Senão, retorna false

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
end
result = fruits.length == matches.length
result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
end
result = fruits.length == matches.length
result
#=> false

# Usar o método all? torna o código acima simplificado
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.all? { |fruit| fruit.length > 3 }
#=> true
fruits.all? { |fruit| fruit.length > 6 }
#=> false

# O método #all? vai retornar true por padrão ao menos que o bloco retorne 'false' ou 'nil'. Se você chamar o método #all? em um vetor ou dicionário vazio, ele retorna 'true'

# MÉTODO none?

# O método #none? retorna 'true' apenas se a condição dentro do bloco satisfaz nenhum dos elementos do vetor ou dicionário. Senão, retorna falso. 'none' significa 'nenhum' em inglês

fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false
fruits.each do |fruit|
  if fruit.length > 10
    result = false
    break
  end
  result = true
end
result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false
fruits.each do |fruit|
  if fruit.length > 6
    result = false
    break
  end
  result = true
end
result
#=> false

# Usar o método #none? torna o código acima simplificado
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.none? { |fruit| fruit.length > 10 }
#=> true
fruits.none? { |fruit| fruit.length > 6 }
#=> false