function novoNo(valor)
  return {valor = valor, esquerda = nil, direita = nil}
end

function inserir(raiz, valor)
  if raiz == nil then
    return novoNo(valor)
  elseif valor < raiz.valor then
    raiz.esquerda = inserir(raiz.esquerda, valor)
  else
    raiz.direita = inserir(raiz.direita, valor)
  end
    return raiz
end

function exibirHierarquico(raiz, nivel)
  nivel = nivel or 0
  if raiz ~= nil then
    exibirHierarquico(raiz.direita, nivel + 1)
    print(string.rep("    ", nivel) .. raiz.valor)
    exibirHierarquico(raiz.esquerda, nivel + 1)
  end
end

local raiz = nil
local dados = {10}
math.randomseed(os.time())

for i = 1, 8 do
  local random = math.random(15)
    table.insert(dados, random)
end

  

for _, valor in ipairs(dados) do
  raiz = inserir(raiz, valor)
end

-- GRAFOS 

local grafo = {}

function newAresta(grafo, u, v)
  -- ADD V na adjacencias de U
  grafo[u] = grafo[u] or {}
  table.insert(grafo[u], v)
  
  -- ADD U nas adjacencias de V
  grafo[v] = grafo[v] or {}
  table.insert(grafo[v], u)
end

newAresta(grafo, "A", "B")
newAresta(grafo, "A", "C")
newAresta(grafo, "B", "C")
newAresta(grafo, "C", "D")

for vertice, adj in pairs(grafo) do
  io.write(vertice .. ": ")
    for oi, adjj in ipairs(adj) do
      io.write(adjj .. " ")
    end
    print()
end
