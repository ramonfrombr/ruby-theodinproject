def cifra_de_caesar(texto, chave)
  texto_cifrado = ""
  texto.each_char do |caractere|
    # Se entre 'A' e 'Z', calcule - 65
    if caractere >= 'A' and caractere <= 'Z' 
      valor_caractere = caractere.ord - 65
      deslocamento = (valor_caractere + chave) % 26
      texto_cifrado.insert(-1, (deslocamento + 65).chr)
    # Se entre 'a' e 'z', calcula - 97
    elsif caractere >= 'a' and caractere <= 'z'
      valor_caractere = caractere.ord - 97
      deslocamento = (valor_caractere + chave) % 26
      texto_cifrado.insert(-1, (deslocamento + 97).chr)
    else
      texto_cifrado.insert(-1, caractere)
    end
  end
  texto_cifrado
end

puts cifra_de_caesar("abc", 1)
puts cifra_de_caesar("xyz", 1)
