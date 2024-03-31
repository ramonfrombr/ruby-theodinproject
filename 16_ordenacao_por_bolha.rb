def ordenacao_por_bolha!(lista)
  trocas = -1
  

  while trocas != 0
    trocas = 0

    (0..lista.length).each { |i|
      break if lista.size-1 == i
      if lista[i] > lista[i+1]
        temp = lista[i]
        lista[i] = lista[i+1]
        lista[i+1] = temp
        trocas += 1
      end
    }
  end
end

l = [4,3,78,2,0,2]

ordenacao_por_bolha! l

p l