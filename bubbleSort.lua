-- BubbleSort

  local array = {1, 4, 51, 0, 48, 94, 519, 54}
  local length = #array
  
    for i = 1, length - 1  do
      for j = 1, length - i do
        if array[j] > array[j + 1] then
          
          array[j + 1], array[j] = array[j], array[j + 1]
          
        end
      end
    end
    
  for i, v in pairs(array) do
    print(v)
  end
