# DECLARANDO VARIÁVEIS
idade = 18          #=> 18
idade = 18 + 5      #=> 23
idade = 18
idade               #=> 18
idade = 33
idade               #=> 33
idade = 18
idade               #=> 18
idade = idade + 4
idade               #=> 22
idade = 18
idade += 4          #=> 22
idade = 18
idade -= 2          #=> 16
dinheiro = 10
dinheiro *= 2       #=> 20
temperatura = 40
temperatura /= 10   #=> 4

# NOMEANDO VARIÁVEIS
# ruim
a = 19
string = "João"
# bom
idade = 19
nome = "João"
pode_nadar = false

# VARIÁVEIS SÃO REFERÊNCIAS
cidade = "Barcelona"
cidade_do_joao = cidade
cidade                  #=> "Barcelona"
cidade_do_joao          #=> "Barcelona"
cidade_do_joao.upcase!  #=> "BARCELONA"
cidade                  #=> "BARCELONA"
cidade_do_joao          #=> "BARCELONA"
