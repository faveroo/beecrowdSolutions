--[[ Você deve fazer um programa que leia um valor qualquer e apresente uma mensagem dizendo em qual dos seguintes intervalos ([0,25], (25,50], (50,75], (75,100]) este valor se encontra. Obviamente se o valor não estiver em nenhum destes intervalos, deverá ser impressa a mensagem “Fora de intervalo”.

O símbolo ( representa "maior que". Por exemplo:
[0,25]  indica valores entre 0 e 25.0000, inclusive eles.
(25,50] indica valores maiores que 25 Ex: 25.00001 até o valor 50.0000000

]]

local interval = io.read("*n")
local encontrado = false

local intervalos = {
  {min = 0, max = 25.000001, sim1 = "[", sim2 = "]"},
  {min = 25.00001, max = 50, sim1 = "(", sim2 = "]"},
  {min = 50.00001, max = 75, sim1 = "(", sim2 = "]"},
  {min = 75.00001, max = 100, sim1 = "(", sim2 = "]"}
}

for i, intervalo in ipairs(intervalos) do
  if interval >= intervalo.min and interval <= intervalo.max then
    print("Intervalo " .. intervalo.sim1 .. math.floor(intervalo.min) .. "," .. math.floor(intervalo.max) .. intervalo.sim2)
    encontrado = true
    break
  end
  
end


if not encontrado then
  print("Fora de intervalo")
end
