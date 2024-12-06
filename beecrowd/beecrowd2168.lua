function isafe(x, y, matriz)
  sum = matriz[x][y] + matriz[x][y + 1] + matriz[x + 1][y] + matriz[x + 1][y + 1]
  return sum > 1
end

local n = io.read("*n")
local matriz =  {}

for i = 1, n + 1 do
  matriz[i] = {}
    for j = 1, n + 1 do
        local num = io.read("*n")
      matriz[i][j] = num
    end
end

for i = 1, n do
    for j = 1, n do
  io.write(isafe(i, j, matriz) and "S" or "U")
    end
  print()
end
