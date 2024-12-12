local line = tonumber(io.read("*l"))
local operation = io.read("*l")
local resultado = 0
local matriz = {}

for i = 0, 11 do
  matriz[i] = {}
  for j = 0, 11 do
    matriz[i][j] = io.read("*n")
  end
end

for k = 0, 11 do
  resultado = resultado + matriz[line][k]
end
  
if operation == "S" then
  print(string.format("%.1f", resultado))
else
  resultado = resultado / 12
  print(string.format("%.1f", resultado))
end
