Algoritmo "Troca de Valores"
Var
a, b, intermediario: inteiro // crie duas variáveis do tipo inteiro.

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

Escreva("Olá, digite um valor para A:")
leia(a)

Escreva("Olá de novo, digite agora outro valor para B:")
leia(b)

// Exibe para o usuário os valores digitados.
Escreva("Muito bem! Você digitou os valores para A:", a, " e B:", b)

// Fazemos a troca dos valores das variáveis,
// precisamos de uma veriável intermediária para fazer a troca
intermediario <- a
a <- b
b <- intermediario

Escreva("Se invertermos os valores de A e B teremos A:", a, " e B:", b)

Fimalgoritmo