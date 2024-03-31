# CRIANDO DICIONÁRIOS
meu_dicionario = {
  "uma palavra qualquer" => "ma ôe",
  "nota da prova do Carlos" => 94,
  "um vetor" => [1, 2, 3],
  "um dicionário vazio dentro de um dicionário" => {}
}

meu_dicionario = Hash.new
meu_dicionario               #=> {}

# :seis é um símbolo
dicionario = { 9 => "nove", :seis => 6 }

# ACESSANDO VALORES
sapatos = {
  "verão" => "sandalhas",
  "inverno" => "botas"
}

sapatos["verão"]   #=> "sandalhas"
sapatos["caminhada"]   #=> nil
sapatos.fetch("caminhada")   #=> KeyError: key not found: "caminhada"
sapatos.fetch("caminhada", "botas de caminhada") #=> "botas de caminhada"

# ADICIONANDO E ALTERANDO DADOS
sapatos["outono"] = "tênis"
sapatos     #=> {"verão"=>"sandalhas", "inverno"=>"botas", "outono"=>"tênis"}
sapatos["verão"] = "chinelo"
sapatos     #=> {"verão"=>"chinelo", "inverno"=>"botas", "outono"=>"tênis"}

# REMOVENDO DADOS
sapatos.delete("verão")    #=> "chinelo"
sapatos                    #=> {"inverno"=>"botas", "outono"=>"tênis"}

# MÉTODOS
livros = {
  "Capitães de Areia" => "Jorge Amado",
  "O Guarani" => "José de Alencar"
}
livros.keys      #=> ["Infinite Jest", "Into the Wild"]
livros.values    #=> ["David Foster Wallace", "Jon Krakauer"]

# COMBINANDO DOIS DICIONÁRIOS
dicionario1 = { "a" => 100, "b" => 200 }
dicionario2 = { "b" => 254, "c" => 300 }
dicionario1.merge(dicionario2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# USANDO SÍMBOLOS COMO CHAVES DO DICIONÁRIO
# Sintaxe 'seta'
carros_americanos = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# 'Sintaxe' símbolos
carros_japoneses = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
} # { 9: "valor" } não funciona

carros_americanos[:ford]    #=> "Mustang"
carros_japoneses[:honda]   #=> "Accord"