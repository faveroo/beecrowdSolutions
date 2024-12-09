local par, impar = {}, {}

for i = 1, 15 do
  local num = io.read("*n")
    if num % 2 == 0 then
      table.insert(par, num)
        if #par == 5 then
          for i = 1, 5 do
            print(string.format("par[%d] = %d", i - 1, par[i]))
          end
          par = {}
        end
    else
      table.insert(impar, num)
        if #impar == 5 then
          for i = 1, 5 do
            print(string.format("impar[%d] = %d", i - 1, impar[i]))
          end
          impar = {}
        end
    end
    
end

for i = 1, #impar do
  print(string.format("impar[%d] = %d", i - 1, impar[i]))
end

for i = 1, #par do
  print(string.format("par[%d] = %d", i - 1, par[i]))
end
