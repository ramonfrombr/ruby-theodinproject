def calcular_diferencas(acoes)
  diferencas = Array.new

  acoes.each_with_index do |compra, dia_compra|

    acoes[dia_compra + 1..].each_with_index do |venda, dia_venda|

      diferenca = venda - compra

      informacao = {
        dias: {
          compra: {
            valor: compra,
            dia: dia_compra
          },
          venda: {
            valor: venda,
            dia: calcular_dia_venda(acoes, dia_compra, dia_venda)
          }
        },
        diferenca: diferenca
      }
      diferencas.push(informacao)
    end
  end
  diferencas
end

def calcular_dia_venda(acoes, dia_compra, dia_venda)
  acoes.count - acoes[dia_compra + 1..].count + dia_venda
end

def definir_maior(lista)
  maior = lista[0][:diferenca]
  compra = lista[0][:dias][:compra][:valor]
  dia_compra = lista[0][:dias][:compra][:dia]
  venda = lista[0][:dias][:venda][:valor]
  dia_venda = lista[0][:dias][:venda][:dia]

  lista.each do |item|
    if item[:diferenca] > maior
      maior = item[:diferenca]
      compra = item[:dias][:compra][:valor]
      dia_compra = item[:dias][:compra][:dia]
      venda = item[:dias][:venda][:valor]
      dia_venda = item[:dias][:venda][:dia]
    end
  end

  {
    dias: {
      compra: {
        valor: compra,
        dia: dia_compra
      },
      venda: {
        valor: venda,
        dia: dia_venda
      }
    },
    diferenca: maior
  }
end

def selecionador_de_acoes(lista)
  diferencas = calcular_diferencas(lista)
  maior = definir_maior(diferencas)
  [maior[:dias][:compra][:dia], maior[:dias][:venda][:dia]]
end

lista = [17,3,4,9,15,11,6,1,10]
print selecionador_de_acoes(lista)