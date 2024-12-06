local a = tonumber(io.read())
local b = tonumber(io.read())
local media = ((a * 3.5) + (b * 7.5)) / 11
print(string.format("MEDIA = %.5f", media))
