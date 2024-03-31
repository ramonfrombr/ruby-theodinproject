# CRIANDO VETORES
vetor_numeros = [1, 2, 3, 4, 5]
vetor_strings = ["Isto", "é", "um", "vetor", "pequeno"]
vetor1 = Array.new               #=> []
vetor2 = Array.new(3)            #=> [nil, nil, nil]
vetor3 = Array.new(3, 7)         #=> [7, 7, 7]
vetor4 = Array.new(3, true)      #=> [true, true, true]

# ACESSANDO ELEMENTOS
vetor_strings = ["Isto", "é", "um", "vetor", "pequeno"]
vetor_strings[0]            #=> "Isto"
vetor_strings[1]            #=> "é"
vetor_strings[4]            #=> "pequeno"
vetor_strings[-1]           #=> "pequeno"
vetor_strings[-2]           #=> "vetor"
vetor_strings.first         #=> "Isto"
vetor_strings.first(2)      #=> ["Isto", "é"]
vetor_strings.last(2)       #=> ["vetor", "pequeno"]

# ADICIONANDO E REMOVENDO ELEMENTOS
vetor_numeros = [1, 2]
vetor_numeros.push(3, 4)      #=> [1, 2, 3, 4]
vetor_numeros << 5            #=> [1, 2, 3, 4, 5]
vetor_numeros.pop             #=> 5
vetor_numeros                 #=> [1, 2, 3, 4]

vetor_numeros = [2, 3, 4]
vetor_numeros.unshift(1)      #=> [1, 2, 3, 4]
vetor_numeros.shift           #=> 1
vetor_numeros                 #=> [2, 3, 4]

vetor_numeros = [1, 2, 3, 4, 5, 6]
vetor_numeros.pop(3)          #=> [4, 5, 6]
vetor_numeros.shift(2)        #=> [1, 2]
vetor_numeros                 #=> [3]

# ADICIONANDO E SUBTRAINDO VETORES
a = [1, 2, 3]
b = [3, 4, 5]
a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

# MÉTODOS BÁSICOS
puts vetor_numeros.methods  #=> Uma longa lista de métodos
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false
[1, 2, 3].length        #=> 3
[1, 2, 3].reverse       #=> [3, 2, 1]
[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false
[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"