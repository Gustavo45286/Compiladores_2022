algoritmo "Trabalho 01"
// Trabalho algoitimo 01
// Gustavo Bonifácio da Silva
// 1° periodo Ciência da Computação
var
o: inteiro
a,b,c,d :real
enter :caractere
//
   funcao menu () : inteiro
   inicio
         escreval( ".:: Menu ::.")
         escreval(" 1. Inserir coeficientes")
         escreval(" 2. Mostrar equação")
         escreval(" 3. Raizes")
         escreval(" 4. Concavidade")
         escreval(" 5. Posicao do vertice")
         escreval(" 6. Intercepto de Y")
         escreval(" 7. Sair")
         escreva(" Opção : ")
         leia(o)
         retorne o
   fimfuncao
//
   funcao delta (x:real;y:real;z:real) :real
   var
   d:real
   inicio
   d<-(y*y)-4*x*z
   retorne d
   fimfuncao
//
   procedimento sinais(a:real)
   inicio
   se a <0 entao
     escreva (a)
   senao
     escreva (" +",a)
   fimse
   fimprocedimento
//
  procedimento raizes (b:real;d:real;a:real)
  inicio
  se a <>0 entao
    se d > 0 entao
       escreval (" Existem duas raizes")
       escreval (" Primeira raiz",(-b+raizQ(d))/(2*a))
       escreval (" Segunda raiz",(-b-raizQ(d))/(2*a))
    senao
       se d = 0 entao
          escreval (" Existem duas raizes iguais")
          escreval (" Primeira raiz",(-b)/(2*a))
          escreval (" Segunda raiz",(-b)/(2*a))
       senao
          escreval (" A raiz nao pertence aos reais.")
       fimse
    fimse
  senao
    escreval (" Insira os coeficientes primeiro.")
  fimse
  fimprocedimento
//
  procedimento concavidade (a:real)
  inicio
  se a = 0 entao
   escreval (" Insira os coeficientes primeiro.")
  senao
    se a > 0 entao
      escreval (" A parábola tem a concavidade voltada para cima.")
    senao
      escreval (" A parábola tem a concavidade voltada para baixo.")
    fimse
  fimse
  fimprocedimento
//
  procedimento vertice(a:real;b:real;d:real)
  inicio
  se a <> 0 entao
    escreva (" A posicao do vertice da parabola é: ")
    escreva ("(",(-b/(2*a)),",")
    escreval ((-d/(4*a)),")")
  senao
    escreval (" Insira os coeficientes primeiro.")
  fimse
  fimprocedimento
//
  procedimento intercepto (a:real;c:real)
  inicio
  se a <> 0 entao
    escreva (" A parábola intercepta o eixo y em: ")
    escreval ("(0,",c,")")
  senao
    escreval (" Insira os coeficientes primeiro.")
  fimse
  fimprocedimento
//
inicio
repita
 o <- menu()
 escolha o
         caso 1
            repita
             escreval ("Insira o valor de 'a', sendo 'a' diferente de 0.")
              leia (a)
            ate a <> 0
            escreval ("Insira o valor de 'b'.")
             leia (b)
            escreval ("Insira o valor de 'c'.")
             leia (c)
            d<- delta(a,b,c)
            
         caso 2
           se a <> 0 entao
             sinais (a)
             escreva (" * x^2")
             sinais (b)
             escreva (" * x")
             sinais (c)
           senao
             escreval (" Insira os coeficientes primeiro.")
           fimse

         caso 3
           raizes (b,d,a)

         caso 4
           concavidade (a)
           
         caso 5
           vertice (a,b,d)
           
         caso 6
           intercepto (a,c)
           
         caso 7
           escreval(" Saindo...")

         outrocaso
          escreval("Opção inválida.")
          
 fimescolha
 escreval()
 escreval ("Precione <ENTER> para continuar.")
 leia (enter)
 limpatela
ate o = 7
fimalgoritmo
