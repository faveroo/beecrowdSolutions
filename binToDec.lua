local n, pot2, ultAlg, numero = 0, 1 , 0, 0

  print("Digite um numero na Base binária: ")
  n = tonumber(io.read())
    
    while n > 0 do
      ultAlg = n % 10
      numero = numero + ultAlg * pot2
      pot2 = pot2 * 2
      n = n // 10
    end
    
    print("O seu número: ", numero)

