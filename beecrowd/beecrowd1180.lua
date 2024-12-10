local n = io.read("*n")
local menor, pos = math.huge, -1

for i = 0, n - 1 do
  local valor = io.read("*n")
    if valor < menor then
      menor = valor
      pos = i
    end
end

print("Menor valor: " .. menor)
print("Posicao: " .. pos)
