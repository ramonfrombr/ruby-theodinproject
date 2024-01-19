
# Números

# Adição
a = 1 + 1   #=> 2

# Subtração
b = 2 - 1   #=> 1

# Multiplicação
c = 2 * 2   #=> 4

# Divisão
d = 10 / 5  #=> 2

# Potência
e = 2 ** 2  #=> 4
f = 3 ** 4  #=> 81

# Módulo (encontrar o resto de divisão)
g = 8 % 2   #=> 0  (8 / 2 = 4; não há resto)
h = 10 % 4  #=> 2  (10 / 4 = 2 com um resto igual a 2)

i = 17 / 5    #=> 3, não 3.4

j = 17 / 5.0  #=> 3.4

# Para converter um inteiro em um número decimal:
k = 13.to_f   #=> 13.0

# Para converter um número decimal em um inteiro:
l = 13.0.to_i #=> 13
m = 13.9.to_i #=> 13

n = 6.even? #=> true
o = 7.even? #=> false

p = 6.odd? #=> false
q = 7.odd? #=> true


# Strings

# Concatenação
# Com o operador mais:
s1 = "Bem-vindo " + "ao " + "freeCodeCamp!"    #=> "Bem-vindo ao freeCodeCamp!"

# Com o operador seta:
s2 = "Bem-vindo " << "ao " << "freeCodeCamp!"  #=> "Bem-vindo ao freeCodeCamp!"

# Com o método concat:
s3 = "Bem-vindo ".concat("ao ").concat("freeCodeCamp!")  #=> "Bem-vindo ao freeCodeCamp!"

# Substrings
s4 = "bom dia"[0]      #=> "b"
s5 = "bom dia"[0..1]   #=> "bo"
s6 = "bom dia"[0, 4]   #=> "bom a"
s7 = "bom dia"[-1]     #=> "a"
puts s4
puts s5
puts s6
puts s7

# Interpolaçãon
nome = "freeCodeCamp"
puts "Olá, #{nome}" #=> "Olá, freeCodeCamp"
puts 'Olá, #{nome}' #=> "Olá, #{nome}


"olá".capitalize #=> "Olá"
"olá".include?("ol")  #=> true
"olá".include?("z")   #=> false
"olá".upcase  #=> "OLÁ"
"Olá".downcase  #=> "olá"
"olá".empty?  #=> false
"".empty?       #=> true
"olá".length  #=> 3
"olá".reverse  #=> "olleh
"olá mundo".split  #=> ["olá", "mundo"]
"olá".split("")    #=> ["o", "l", "á"]
" olá, mundo   ".strip  #=> "olá, mundo"
"4lá mund4".sub("4", "o")           #=> "olá mund4"
"4lá mund4".gsub("4", "o")          #=> "olá mundo"
"olá".insert(-1, " pessoa")     #=> "olá pessoa"
"olá mundo".delete("o")       #=> "lá mund"
"!".prepend("olá, ", "mundo") #=> "olá, mundo!"

# Convertendo outros objetos para strings
5.to_s        #=> "5"
nil.to_s      #=> ""
:symbol.to_s  #=> "symbol


# Criando símbolos

simbolo = :simbolo

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:simbolo.object_id == :simbolo.object_id    #=> true

# Booleano
verdadeiro = true
falso = false
nulo = nil