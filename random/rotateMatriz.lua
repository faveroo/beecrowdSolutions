local array = {{1, 1, 1},
               {2, 2, 2},
               {3, 3, 3}}

local aux = {{0, 0, 0}, 
             {0, 0, 0}, 
             {0, 0, 0}}

for i = 1, #array do
  for j = 1, #array do
    aux[j][4 - i] = array[i][j]
  end
end

for i = 1, #aux do
  for j = 1, #aux do
    io.write(aux[i][j] .. " ")
  end
  print()
end
