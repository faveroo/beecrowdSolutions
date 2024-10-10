local num, pot10, resto, binario = 0, 1, 0, 0;
print("Digite um número: ");
num = tonumber(io.read())

  while num ~= 0 do
    resto = num % 2
    binario = binario + resto * pot10
    pot10 = pot10 * 10
    num = num // 2
  end
  
  print("O binario é ", binario)
