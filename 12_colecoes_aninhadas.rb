# Vetores aninhados
pontuacoes_testes = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

professores = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# Acessando elementos
professores[0][0]
#=> "Adams"
professores[1][0]
#=> "Jones"
professores[2][0]
#=> "Perez"

professores[0][-1]
#=> "Davis"
professores[-1][0]
#=> "Perez"
professores[-1][-2]
#=> "Smith"

professores[3][0]
#=> NoMethodError
professores[0][4]
#=> nil

# Retornando nil quando não existe um elemento na posição acessada
professores.dig(3, 0)
#=> nil
professores.dig(0, 4)
#=> nil


# CRIANDO UM NOVO VETOR ANINHADO

mutavel = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutavel[0][0] = 1000
#=> 1000
mutavel
#=> [[1000, nil], [1000, nil], [1000, nil]]

imutavel = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
imutavel[0][0] = 1000
#=> 1000
imutavel
#=> [[1000, nil], [nil, nil], [nil, nil]]


# ADICIONANDO E REMOVENDO ELEMENTOS

pontuacoes_testes << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
pontuacoes_testes[0].push(100)
#=> [97, 76, 79, 93, 100]
pontuacoes_testes
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

pontuacoes_testes.pop
#=> [100, 99, 98, 97]
pontuacoes_testes[0].pop
#=> 100
pontuacoes_testes
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


# PERCORRENDO UM VETOR ANINHADO

# Percorrendo um vetor
professores.each_with_index do |linha, linha_indice|
  puts "Linha:#{linha_indice} = #{linha}"
end
#=> Linha:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Linha:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Linha:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

# Percorrendo um vetor aninhado
professores.each_with_index do |linha, linha_indice|
  linha.each_with_index do |professor, coluna_indice|
    puts "Linha:#{linha_indice} Coluna:#{coluna_indice} = #{professor}"
  end
end
#=> Linha:0 Coluna:0 = Adams
#=> Linha:0 Coluna:1 = Baker
#=> Linha:0 Coluna:2 = Clark
#=> Linha:0 Coluna:3 = Davis
#=> Linha:1 Coluna:0 = Jones
#=> Linha:1 Coluna:1 = Lewis
#=> Linha:1 Coluna:2 = Lopez
#=> Linha:1 Coluna:3 = Moore
#=> Linha:2 Coluna:0 = Perez
#=> Linha:2 Coluna:1 = Scott
#=> Linha:2 Coluna:2 = Smith
#=> Linha:2 Coluna:3 = Young
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


# Percorrendo um vetor aninhado com método 'flatten'
professores.flatten.each do |professor|
  puts "#{professor} é ótimo!"
end
#=> Adams é ótimo!
#=> Baker é ótimo!
#=> Clark é ótimo!
#=> Davis é ótimo!
#=> Jones é ótimo!
#=> Lewis é ótimo!
#=> Lopez é ótimo!
#=> Moore é ótimo!
#=> Perez é ótimo!
#=> Scott é ótimo!
#=> Smith é ótimo!
#=> Young é ótimo!
#=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]


# Testando se algum estudante conseguiu uma pontuação maior que 80 em todos os testes

pontuacoes_testes = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


pontuacoes_testes.any? do |pontuacoes|
  pontuacoes.all? { |pontuacao| pontuacao > 80 }
end
#=> false

# Testando se todos os estudantes conseguiram uma pontuação maior que 80 em algum teste
pontuacoes_testes.all? do |pontuacoes|
  pontuacoes.any? { |pontuacao| pontuacao > 80 }
end
#=> true



# DICIONÁRIOS ANINHADOS

veiculos = {
  alice: {ano: 2019, marca: "Toyota", modelo: "Corolla"},
  blake: {ano: 2020, marca: "Volkswagen", modelo: "Beetle"},
  caleb: {ano: 2020, marca: "Honda", modelo: "Accord"}
}

# ACESSANDO DADOS

# dicionario[:x][:y]

veiculos[:alice][:ano]
#=> 2019
veiculos[:blake][:marca]
#=> "Volkswagen"
veiculos[:caleb][:modelo]
#=> "Accord"

# Acessando uma chave não existente

veiculos[:zoe][:ano]
#=> NoMethodError
veiculos.dig(:zoe, :ano)
#=> nil
veiculos[:alice][:color]
#=> nil
veiculos.dig(:alice, :color)
#=> nil


# ADICIONANDO E REMOVENDO DADOS

veiculos[:dave] = {ano: 2021, marca: "Ford", modelo: "Escape"}
#=> {:ano=>2021, :marca=>"Ford", :modelo=>"Escape"}
veiculos
#=> {:alice=>{:ano=>2019, :marca=>"Toyota", :modelo=>"Corolla"}, :blake=>{:ano=>2020, :marca=>"Volkswagen", :modelo=>"Beetle"}, :caleb=>{:ano=>2020, :marca=>"Honda", :modelo=>"Accord"}, :dave=>{:ano=>2021, :marca=>"Ford", :modelo=>"Escape"}}

veiculos[:dave][:color] = "red"
#=> "red"
veiculos
#=> {:alice=>{:ano=>2019, :marca=>"Toyota", :modelo=>"Corolla"}, :blake=>{:ano=>2020, :marca=>"Volkswagen", :modelo=>"Beetle"}, :caleb=>{:ano=>2020, :marca=>"Honda", :modelo=>"Accord"}, :dave=>{:ano=>2021, :marca=>"Ford", :modelo=>"Escape", :color=>"red"}}

veiculos.delete(:blake)
#=> {:ano=>2020, :marca=>"Volkswagen", :modelo=>"Beetle"}
veiculos
#=> {:alice=>{:ano=>2019, :marca=>"Toyota", :modelo=>"Corolla"}, :caleb=>{:ano=>2020, :marca=>"Honda", :modelo=>"Accord"}, :dave=>{:ano=>2021, :marca=>"Ford", :modelo=>"Escape", :color=>"red"}}

# Removendo uma propriedade de um dicionário aninhado

veiculos[:dave].delete(:color)
#=> "red"
veiculos
#=> {:alice=>{:ano=>2019, :marca=>"Toyota", :modelo=>"Corolla"}, :caleb=>{:ano=>2020, :marca=>"Honda", :modelo=>"Accord"}, :dave=>{:ano=>2021, :marca=>"Ford", :modelo=>"Escape"}}

# MÉTODOS

# nome é a chave e dados é o valor

veiculos.select { |nome, dados| dados[:ano] >= 2020 }
#=> {:caleb=>{:ano=>2020, :marca=>"Honda", :modelo=>"Accord"}, :dave=>{:ano=>2021, :marca=>"Ford", :modelo=>"Escape"}}

veiculos.collect { |nome, dados| nome if dados[:ano] >= 2020 }
#=> [nil, :caleb, :dave]

veiculos.collect { |nome, dados| nome if dados[:ano] >= 2020 }.compact
#=> [:caleb, :dave]

veiculos.filter_map { |nome, dados| nome if dados[:ano] >= 2020 }
#=> [:caleb, :dave]