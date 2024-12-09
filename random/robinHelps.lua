--[[
  problema do Codeforces resolvido em lua

Aqui está a tradução do problema que você forneceu, formatada para ser colocada no GitHub:

---

## Problema: Robin Hood e o Ouro

O famoso fora da lei Robin Hood é conhecido por tirar dos ricos e dar aos pobres.

Robin encontra n pessoas, começando da 1ª até a n-ésima. A i-ésima pessoa possui a[i] ouro. Se a[i] > limite, Robin irá pegar todo o a[i] ouro; se a[i] = 0, Robin dará 1 ouro se ele tiver algum. Robin começa com 0 ouro.

### Objetivo

Determine quantas pessoas Robin dá ouro.

### Entrada

- A primeira linha contém um único inteiro "qtd" — o número de casos de teste.
  
- A primeira linha de cada caso de teste contém dois inteiros people, limite — o número de pessoas e o limite em que Robin Hood pega o ouro.

- A segunda linha de cada caso de teste contém a[i] — a quantidade de ouro que cada pessoa possui.

### Saída

Para cada caso de teste, imprima um único inteiro — o número de pessoas que receberão ouro de Robin Hood.

### Exemplo

#### Entrada
```
3
2 1
1 0
3 2
2 0 0
4 1
1 0 0 0
```

#### Saída
```
1
2
1
```

### Restrições
- A entrada garante que o número de casos de teste e o total de pessoas estão dentro dos limites especificados.

]]
local qtd = tonumber(io.read())

for _ = 1, qtd do
  local people, limite = io.read("*n", "*n")
  local gold = 0
  local ouro_dado = 0
  
  local a = {}
    
    for i = 1, people do
      a[i] = tonumber(io.read("*n"))
    end
    for i = 1, people do
      if a[i] >= limite then
        gold = gold + a[i]
      elseif a[i] == 0 and gold > 0 then
        gold = gold - 1
        ouro_dado = ouro_dado + 1
    end
end
  print(ouro_dado)
end
