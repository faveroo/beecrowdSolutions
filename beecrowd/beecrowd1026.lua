local input = io.read("a")
local lines = {}

for line in input:gmatch("[^\r\n]+") do
    table.insert(lines, line)
end

for _, line in ipairs(lines) do
    local a, b = line:match("(%d+) (%d+)")
    a = tonumber(a)
    b = tonumber(b)

    print(a ~ b)
end
