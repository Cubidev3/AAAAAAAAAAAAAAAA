-- Esse arquivo é para quem está desesperado com a prova de Papis
-- ao ponto para pagar esse arquivo com um Nude
-- Muito Obrigado! (っ＾▿＾)۶🍸🌟🍺٩(˘◡˘ )

-- Ok, Bora lá

-- Eu vou passar pelos slides de Papis (Giovanny S2 S2), fazendo algumas das questões (Vou pular se ficar muito igual) e ir explicando meus pensamentos e lógica
-- de como eu cheguei lá
-- De quebra, se tiver algum assunto que eu perceba ser importante eu darei um destque extra.

-- Agr chega de viadagem e bora pra haskell

-- [ Aula 4 -> Tipos Basicos e Definições ] --------------------------------------------------------------------------------------------------------------------------------------------------

-- :: Exercicios de Fixação ::

-- Escreva a declaração de uma função que:
-- a. Tem como entrada dois inteiros e devolve um booleano

-- Resposta: funcao :: Int -> Int -> Bool

-- Explicação: Aqui é bem simples, de forma generalizada, a Declaração de uma função é dada por:
--             <Nome da Função> :: <Tipo do 1° Argumento> -> <Tipo do 2° Argumento> -> ... -> <Tipo do n° Argumento> -> <Tipo da Função>

--             Ou seja:
--             <Nome da Função> :: <Tipo do 1° Argumento> -> <Tipo da Função> 
--             (apenas um argumento, Ex: dobro :: Int -> Int)
--                                       dobro x = 2 * x

--             <Nome da Função> :: <Tipo do 1° Argumento> -> <Tipo do 2° Argumento> -> <Tipo da Função>
--             (Função com 2 argumentos, Ex: areaRetangulo :: Float -> Float -> Float)
--                                           areaRetangulo b h = b * h

--             Acho que deu para entender bem.

--             Lendo o Enunciado temos:

--             Escreva a Declaração de uma função que **tem como entrada dois inteiros**

--             Ou seja, escrever a declaração de uma função que possui 2 argumentos, e ambos são do tipo Int

--             funcao :: Int -> Int -> <Tipo da função>

--             e **devolve um booleano**

--             Ou seja, quando você utilizar essa função, o valor será um bool:

--             funcao :: Int -> Int -> Bool 

--             Chegamos no resultado! ᕙ(^▿^-ᕙ)

-- Ps: O tipo da função corresponde ao Tipo do calculo dentro do corpo da função (o que vem depois do =)
--     Ex:
--        dobro :: Int -> **Int** (Função resulta num valor do tipo Int-eiro)
 
--        dobro x = **2 * x**
--        2 * x (Corpo da função) (Tipo Int-eiro, afinal 2 multiplicado por x (do Tipo Int, definido na declaração da função) resulta sempre num valor Int-eiro)

--     Caso o tipo definido na Declaração da função e o tipo do Corpo da função estejam em Desacordo, Haskell reclamará

--        metade :: Int -> **Int** (A função é do tipo Int-eiro)
--        metade x = x / 2 (O corpo da função não é do tipo Int-eiro, afinal x (do Tipo Int, definido na declaração da função) dividido por 2 pode retornar um valor fracionado (Não Int-eiro))

-- Extra: Uma exemplo de função que encaixa com a definição dessa questão é:

--        ehDivisivelPor :: Int -> Int -> Bool
--        ehDivisivelPor x y = mod x y == 0 

--        A lógica dessa questão é que, um numero x será divisível por um número y, quando a divisão inteira de x por y tiver resto igual a 0.
--        Ok, primeiro precisamos pegar esse resto de divisão inteiro, felizmente já existe uma função que faz isso: mod
--        mod x y equivale ao resto da divisão inteiro de x por y
--        Agora verificamos se esse resto é igual a 0 usando o operador ==, que retorna True (Verdadeiro) quando os valores à sua esquerda e à sua direita forem iguais
--        e False caso contrário.
--        Perceba que o corpo da função é do tipo Bool, porque a ultima coisa que ocorre dentro do corpo ( ͡°( ͡° ͜ʖ ͡°( ͡❛ ͜ʖ ͡❛) ͡° ͜ʖ ͡°) ͡°) é uma comparação de igualdade, que é sempre do tipo bool

-- Krl, eu não esperava que iria escrever tanto sobre uma questão tão simples, mas eu espero que tenha sido minimamente útil (ɔ◔‿◔)ɔ ♥
-- Vou tentar ser mais breve

-- b. Tem como entrada um inteiro e um char e devolve um float

-- Vou considerar que você leu a explicação do item anterior, se não esse texto não termina até o Lula se eleger (Lula ladrão, roubou meu coração S2)

-- Resposta: funcao :: Int -> Char -> Float

-- Explicação: Lendo o Enunciado:
--             ... **Tem como entrada um inteiro e um char** ...

--             Então, é uma função com dois argumentos tal que o primeiro é um Int-eiro e o segundo um Char (Caractere):
--             funcao :: Int -> Char -> <Tipo da Função> 

--             ... **e devolve um float**

--             Logo, o tipo da função é Float:
--             funcao :: Int -> Char -> Float

--             Chegamos no resultado! (>‿◠)✌

-- Passando para a 2° Questão de fixação.

-- Escreva as declarações e definições de funções para :
-- a. Dados dois inteiros, retornar o triplo da divisão inteira destes números

-- Resultado: triploDivInt :: Int -> Int -> Int
--            triploDivInt x y = 3 * div x y

-- Explicação: Lendo o enunciado:
--             **Dado dois inteiros** ...

--             Temos que essa função tem dois argumentos, e ambos são Int-eiros:

--             <Nome da Função> :: Int -> Int -> <Tipo da Função>

--             Lendo o resto do enunciado:

--             ... **retornar o triplo da divisão inteira destes números**

--             Desse pedaço podemos extrair 3 coisas, um nome apropiado para a função,
--             como o corpo da função funciona, e consequentemente, o tipo da função,

--             Como a função retorna o **TRIPLO da DIVisão INTeira**, vou nomeala:

--             triploDivInt

--             Sobre o tipo da função, precisamos analizar o que ocorre no corpo dela,
--             Ele faz o Triplo da divisão inteira. Ou seja:

--             primeiro, ela calcula a divisão inteira
--             segundo e ultimo, ela retorna o triplo do resultado dessa divisão inteira

--             Uma divisão inteira equivale a um valor do tipo Int-eiro
--             e o triplo de um valor Int-eiro ainda é inteiro!

--             Logo, o tipo da função é Int-eiro! ᕙ(`▿´)ᕗ

--             Agora temos completa a definição da função:

--             triploDivInt :: Int -> Int -> Int

--             Agora Vamos fazer a função em si:

--             triploDivInt x y = <Corpo da Função>

--             Lembre sempre de checar se o nome da função está igual na Definição e nela em si!
--             A questão já nos passou o que a função faz:

--             ... **retornar o triplo da divisão inteira destes números**

--             usamos isso para definir o tipo da função, ao destrinchar como ela funciona.
--             Pera... Nós já destrinchamos como ela funciona!

--             primeiro, ela calcula a divisão inteira
--             segundo e ultimo, ela retorna o triplo do resultado dessa divisão inteira

--             Vamos usar isso para criar o corpo da nossa função.

--             Primeiro calculamos a divisão inteira de x por y.
--             Para isso usaremos uma outra função já existente: div

--             div é uma função que retorna o quociente de um divisão inteira
--             div x y equivale ao quociente da divisão inteira de x por y

--             Então já temos a primeira parte:

--             div x y

--             Vamos para a segunda parte:
--             Agora retornaremos o triplo dessa divisão inteira, ou seja:

--             3 * div x y

--             Esse era o ultimo passo, então essa expressão acima é o corpo da função! (╥︣﹏᷅╥)
--             Chega fiquei emocionado

--             então temos a resposta:

--             triploDivInt :: Int -> Int -> Int
--             triploDivInt x y = 3 * div x y

-- Vou passar para as proximas questões pois eu preciso chegar nos assuntos mais avançados logo, ok? (>‿◠)✌

-- [ Aula 6 -> Funções, Operadores e Casamento de Padrões ] -------------------------------------------------------------------------------------------------------------------------------

-- Aqui temos bastante assunto, então coitado de mim  ┻━┻ ︵ヽ(`▭´)ﾉ︵﻿ ┻━┻

-- Questão:  Elabore as seguintes funções e depois avalie–as em alguns casos:
-- a. Dados três números, determine se todos são diferentes.

-- Resposta: tresSaoDiferentes :: Float -> Float -> Float -> Bool
--           tresSaoDiferentes x y z = x /= y && y /= z && z /= x

-- Explicação: Como sempre, iniciamos pela definição da função.
--             Lendo o enunciado:

--             **Dado três números** ...

--             Aqui ja temos que:

--             <Nome da Função> :: Float -> Float -> Float -> <Tipo da Função>

--             Porque Float e não Int? Bem, o enunciado não expecificou o tipo exato, e nem é possivel inferir pelo corpo da função (que veremos mais à frente)
--             Então usamos o Tipo Mais abrangente, que, nesse caso, é o Float.

--             Continuando com o enunciado:

--             **determine se todos (os números) são diferentes**

--             Aqui é mais ambiguo que no exemplo anterior, não temos como a função funciona de forma explicita, porem podemos inferir q o tipo da função será Bool.
--             Eu explico, precisamos determinar se três números são diferentes, três numeros serem diferentes entre sí é de um valor binário, ou seja
--             ou Três números são diferentes, ou Três números não são diferentes, não há meio termo!

--             Qual Tipo que se encaixa? Bool.

--             <Nome da Função> :: Float -> Float -> Float -> Bool

--             Com esse pedaço do enunciado podemos conseguir tambem um nome apropriado para a função, aqui escolhi:

--             tresSaoDiferentes

--             Obs: Quando trabalhamos com funções do tipo Bool, é interessante que o nome da função seja algum tipo de pergunta de Sim ou Não,
--                  Assim criamos uma dinâmica de Pergunta (Nome da função) - Resposta (Valor da Função)

--             tresSaoDiferentes :: Float -> Float -> Float -> Bool

--             Temos a Definição da Função! ❤（っ＾▿＾）

--             Agora vamos para o corpo da função

--             tresSaoDiferentes :: Float -> Float -> Float -> Bool
--             tresSaoDiferentes x y z = <Corpo da Função>

--             Aqui Papis não nos deu como fazer o corpo, apenas o que ele quer q a função retorne. Então a questão é mais difícil.
--             Mas você não precisa chorar no banheiro em posição fetal! Vamos nos outros exemplos fomos de baixo pra cima (Bottom Up)
--             Agora vamos de Cima para baixo (Top Down)

--             o que queremos? Um algoritmo que me diga se três numeros são diferentes entre si
--             Nesses casos em que o Tipo da Função é Bool, sempre pensamos em como tornar função Verdade, para isso, precisamos saber se:

--             x é diferente de y
--             y é diferente de z
--             z é diferente de x

--             Se tudo isso for verdade, então x, y e z são todos diferentes entre si!
--             E para checar se dois numeros são diferentes temos um operador: /=
--             Que equivale a True caso os dois valores sejam diferentes 
--             e à False caso sem iguais.
--             Temos as ferramentas necessárias, vamos à luta! 💪 (•︡益︠•) 👊

--             Agora temos todos os passos:

--             Primeiro, checamos se x é diferente de y.
--             Segundo, checamos se y é diferente de z.
--             Terceiro, checamos se z é diferente de x.
--             Quarto e Ultimo, checamos se Todas as três checagens acima são verdadeiras ao mesmo tempo.

--             para checar se x é diferente de y, escrevemos:

--             x /= y

--             Para checar se y é diferente de z, escrevemos:

--             y /= z

--             Para checar se z é diferente de x, escrevemos:

--             z /= x

--             Agora precisamos chegar se tudo isso é Verdadeiro ao mesmo temp...
--             Pere aí, todas essas checagem equivalem à ou True ou False, Tipo Bool.
--             Logo podemos usar matemática de bool!

--             Nossa função deve equivaler a True quando x for diferente de y E y for diferente de z E z for diferente de x
--             E E E, temos um operador Booleano pra Isso!: && (ɔ◔‿◔)ɔ ♥

--             Esse operador equivale a True apenas quando ambos seus lados equivalerem a True, e à False caso ao menos Um seja False

--             então temos o seguinte:

--             x /= y && y /= z && z /= x

--             temos o Corpo! (ㆆ_ㆆ)

--             Então a função ficou assim:

--             tresSaoDiferente :: Float -> Float -> Float -> Bool
--             tresSaoDiferente x y z = x /= y && y /= z && z /= x

--             Chegamos na resposta! (っ＾▿＾)۶🍸🌟🍺٩(˘◡˘ )

-- 