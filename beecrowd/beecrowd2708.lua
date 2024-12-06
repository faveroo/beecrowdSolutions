local input = io.read("*l")
local jipe, visit = 0, 0

while input ~= "ABEND" do
  for string, num in input:gmatch("(%S+) (%d+)") do
    if string == "SALIDA" then
      jipe = jipe + 1
      visit = visit + num
    else
      jipe = jipe - 1
      visit = visit - num
    end
  end

  input = io.read("*l")
end

print(visit)
print(jipe)
