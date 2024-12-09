local treeLen = 5

for i = 1, treeLen + 2 do
    if i <= treeLen then
        io.write(string.rep(" ", treeLen - i))
        io.write(string.rep("*", (2 * i) - 1))
    else
        io.write(string.rep(" ", treeLen - 1))
        io.write("*")
    end
    print("")
end
