# ESTRUTURA CONDICIONAL "Se" (if)

quarto_limpo = true
if quarto_limpo == true
  puts "Eu posso jogar videogame"
end

expressao_a_ser_avaliada = false
if expressao_a_ser_avaliada == true
  # execute estes comandos...
end

if 1 < 2
  puts "1 é menor que 2!"
end
#=> 1 é menor que 2!

# Condicional em 1 linha
puts "1 é menor que 2!" if 1 < 2

# ESTRUTURA CONDICIONAL "Se...senão" (if-else)
ataque_por_terra = true
if ataque_por_terra == true
  puts "libere o leão"
else
  puts "libere o tubarão"
end

# ESTRUTURA CONDICIONAL "Se...senão se...senão" (if-elsif-else)
ataque_por_terra = false
ataque_pelo_mar = false
if ataque_por_terra == true
  puts "libere o leão"
elsif ataque_pelo_mar == true
  puts "libere o tubarão"
else
  puts "libere Kevin o falcão"
end

# LÓGICA BOOLEANA

5 == 5  #=> true
5 == 6  #=> false

5 != 7  #=> true
5 != 5  #=> false

7 > 5   #=> true
5 > 7   #=> false

5 < 7   #=> true
7 < 5   #=> false

7 >= 7  #=> true
7 >= 5  #=> true

5 <= 5  #=> true
5 <= 7  #=> true

5.eql?(5.0) #=> false; ainda que sejam o mesmo valor, um é um inteiro e o outro é um decimal
5.eql?(5)   #=> true

a = 5
b = 5
a.equal?(b) #=> true

a = "olá"
b = "olá"
a.equal?(b) #=> false

# Operador 'spaceship' (menor, maior, ou igual)

5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

# OPERADORES LÓGICOS

if 1 < 2 && 5 < 6
  puts "Festa na casa do Kevin!"
end

# Isto também pode ser escrito assim
if 1 < 2 and 5 < 6
  puts "Festa na casa do Kevin!"
end

# Ainda que a expressão na esquerda seja falsa, haverá uma festa na casa do Kevin por que a espressão da direita é verdadeira
if 10 < 2 || 5 < 6 
  puts "Festa na casa do Kevin!"
end

# Isto também pode ser escrito assim
if 10 < 2 or 5 < 6
  puts "Festa na casa do Kevin!"
end

if !false     #=> true
  puts "!false se torna true"
end

if !(10 < 5)  #=> true
  puts "Se 10 não for menor que 5"
end

# ESTRUTURA CONDICIONAL DE CASOS (case-when-then)

# Crie uma variável `eu_passei` e atribua o resultado de uma estrutura de casos passando a variável pontuacao1
pontuacao1 = 'F'
eu_passei = case pontuacao1
  when 'A' then "É claro que sim!!"
  when 'D' then "Não diga a minha mãe."
  else "VOCÊ NÃO PASSARÁ!"
end

pontuacao2 = 'F'
case pontuacao2
when 'A'
  puts "Você é um gênio"
  conta_bancaria_futura = 5_000_000
when 'D'
  puts "Boa sorte na próxima vez"
  pode_aposentar_em_breve = false
else
  puts "VOCÊ NÃO PASSARÁ!"
end

# CONDICIONAL "Ao menos que" (unless)
idade = 19
unless idade < 18
  puts "Arrume um emprego."
end

idade = 19
puts "Bem-vindo à vida de dívidas." unless idade < 18

unless idade < 18
  puts "Você é adulto."
else
  puts "Você não é adulto!"
end

# OPERADOR TERNÁRIO (?:)
idade = 19
resposta = idade < 18 ? "Você ainda tem toda uma vida pela frente." : "Você está crescido."
puts resposta #=> "Você está crescido."

idade = 19
if idade < 18
  resposta = "Você ainda tem toda uma vida pela frente."
else
  resposta = "Você está crescido."
end
puts resposta #=> "Você está crescido."