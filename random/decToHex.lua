
  local functions = {
    [10] = function() return "A" end,
    [11] = function() return "B" end,
    [12] = function() return "C" end,
    [13] = function() return "D" end,
    [14] = function() return "E" end,
    [15] = function() return "F" end,
}




local num, hex, rest =  0, "", 0

  print("Digite um número decimal exato: ")
    local num = tonumber(io.read())
      while num > 0 do
        
        rest = num % 16
        num = num // 16
        
          if functions[rest] then
           hex = functions[rest]() .. hex
            else 
              hex = resto .. hex
          end
      end
      
      print("Seu número hexadecimal é: ", hex)
