
local hexadecimal, decimal, pot16 = "", 0, 16

  print("Digite um número hexadecimal")
  local hexadecimal = io.read()
    hexadecimal = hexadecimal:gsub("%s+", ""):upper()
    
      local length = #hexadecimal
      
        for i = 1, length do 
          local digito = hexadecimal:sub(i, i)
          local valor
          
            if digito:match("%x") then
              valor = tonumber(digito, 16)
            else
              error("Dígito hexadecimal inválido" .. digito)
            end
            
            decimal = decimal + valor * (16 ^ (length - i))
        end
        
        print("Seu número decimal é: ", decimal)
  
