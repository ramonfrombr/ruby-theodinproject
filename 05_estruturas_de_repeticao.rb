# COMANDO 'Repita' (loop)
i = 0
loop do
  puts "i é #{i}"
  i += 1
  break if i == 10
end

# COMANDO 'Enquanto' (while)
i = 0
while i < 10 do
 puts "i é #{i}"
 i += 1
end

# Usando 'while' para receber um dado do usuário enquanto a resposta não é a correta
while gets.chomp != "sim" do
  puts "Nós já chegamos?"
end

# COMANDO 'Até que' (until)
i = 0
until i >= 10 do
 puts "i é #{i}"
 i += 1
end

# Usando 'until' para receber um dado do usuário até que a resposta seja a correta
until gets.chomp == "sim" do
  puts "Você gosta de pizza?"
end

# EXTENSÕES
extensao_1_ate_5 = (1..5)      # extensão inclusiva: 1, 2, 3, 4, 5
extensao_1_ate_4 = (1...5)     # extensão exclusiva: 1, 2, 3, 4
extensao_a_ate_d = ('a'..'d')  # a, b, c, d

# REPETIÇÃO 'Para' (for)
for i in 0..5
  puts "#{i} zumbis estão vindo!"
end

# REPETIÇÃO 'Vezes' (times)
5.times do
  puts "Olá, mundo!"
end

5.times do |number|
  puts "Número #{number}"
end

# REPETIÇÃO "Para cima" (upto)
5.upto(10) { |num| print "#{num} " }

# REPETIÇÃO "Para baixo" (downto)
10.downto(5) { |num| print "#{num} " }