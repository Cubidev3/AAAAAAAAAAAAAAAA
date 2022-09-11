-- Esse arquivo é para quem está desesperado com a prova de Papis
-- ao ponto para pagar esse arquivo com um Nude
-- Muito Obrigado! (っ＾▿＾)۶🍸🌟🍺٩(˘◡˘ )

-- Ok, Bora lá

-- [ Parte 1 ] -----------------------------------------------------------------

-- Haskell é uma linguagem funcional e, no geral, relembra matemática
-- Por exemplo, definições:

x = 10

-- Isso é uma definição! **Definimos** que x equivale ao valor 10
-- Ou seja, assim como na matemática, sempre que você utiliza x em
-- algum calculo, é a mesma coisa que substituir todo x por 10
-- Abaixo mais alguns exemplos de definições:

notaDe50 = 50
tamanhoDoPai = 1.8
pi = 3.1415
prof = "Giovanny"
coracao = "S2"
homofobicos = ["eu", "salnorabo"] -- VSF salnorabo

-- PS: Se vc tem um bom olho, percebeu que em alguns exemplos não utilizei acentos.
--     Em Haskell, não podemos utilizar acentos entre outras coisas fora da lingua inglesa para definir,
--     Entretanto você pode utilizar acentos em comentários como esses (e em strings, veremos à frente)
--     Inclusive, para escrever comentários é só digitar: -- 
--     Tudo, na mesma linha, à direita de -- será um comentário

-- Assim Como na matemática, você não pode definir uma coisa com dois valores ao mesmo tempo

exemplo = "isso pode" -- 1° Definição
exemplo = "isso não pode" -- 2° Definição
-- Isso causará um erro

-- Outra coisa vinda da matemática são funções (Imagina se programação funcional não tivesse funções kk)
-- Como na matemática, uma função é um valor que depende (e consequentemente varia) de outro valor
-- Assim:

dobro x = x * 2

-- Generalizando:

-- <Nome da função> <argumento> = <calculo>

-- essa sintaxe lembra, de novo, a matemática. Inclusive é possivel ler a função de forma semelhante:
-- matemática: f de x igual a x vezes 2
-- Haskell S2: dobro de x igual a x vezes 2

-- Inclusive, funções não precisam ter só um argumento, podem ter quantos argumentos você precisar!

area x y = x * y
juntaCD cidade estado = (cidade, estado)
bhaskara1 a b c = ((-b) + (b * b - 4 * a * c)**(1/2)) / (2 * a)

adicionaCoracao pessoa cora = pessoa ++ cora
areaCirculo r p = p * r * r

-- Juntando Definições com funções
-- é interessante usar definições para guardar valores que nunca vão mudar
-- Essas ultimas duas funções por exemplo, poderiam ser reescritas como:

adicionaCoracao pessoa = pessoa ++ coracao -- coracao vem da definição lá de cima
areaCirculo r = pi * r * r -- pi vem da definicao lá de cima

-- Sim, esse código não vai rodar porque eu defini a mesma função duas vezes, mas é só para exemplificar

-- Talvez vôce esteja querendo me perguntar (eu sou apenas uma voz da sua cabeça lendo o texto, seu animal)
-- se não poderia utilizar diretamente os valores de **coracao** e **pi** nas funções **adicionaCoracao**
-- e **areaCirculo**

adicionaCoracao pessoa = pessoa ++ "S2"
areaCirculo r = 3.1415 * r * r

-- Isso é válido e equivalente aos códigos anteriores, essa é a "versão substituida" do jeito anterior (com as definições)
-- porém usar as definições é um jeito superior de escrever funções.
-- Digamos que depois de um tempo você precise trocar o jeito que um coração é escrito (trocar por um emoji, por exemplo)
-- ou que vc precise usar uma aproximação de pi mais precisa.
-- as Definições centralizam esses valores, o que torna muito fácil de modificar esses valores.
-- Claro, nesses exemplos tambem é facil trocar os valores diretamente, mas quando você tem várias funções que dependem de um mesmo valor
-- não utilizar Definições torna tudo mais complicado, vocẽ teria que trocar cada valor manualmente, que, alem de tedioso, é propenso a erros

-- Além disso, você pode utilizar funções dentro de funções

estaAbaixoDoPeso peso altura = imc < 18.5
imc peso altura = peso / (altura * altura)

-- Isso é interessante conforme suas funções forem ficando mais complexas e você precisar de mais e mais dados (me aprofundarei nos beneficios de quebrar um função em varias depois)
-- Esses exemplos tambem ressaltam duas coisas:
-- - Funções tornam-se valores quando damos um valor para seus argumentos, do mesmo jeito que na matemática: f(x) = 2 * x, f(8) = 2 * 8 = 16.
-- - Argumentos de funções só existem dentro corpo da funções (O cálculo), isso significa que peso e altura não existem fora de suas respectivas funções. o que nos dá liberdade
--   para usar o mesmo nome de argumento nas funções 

-- [ Parte 2 ] -------------------------------------------------------------------

-- Você deve ter percebido que na Parte anterior eu criei funções e definições de tipos variados
-- (Ou vc deve ter estranhado a falta da definição em cima das funções. Apressado vc ( ˘︹˘ ))
-- Por exemplo:

-- notaDe50 é um número não decimal
-- pi é um número decimal
-- coracao é um Texto
-- homofóbicos é uma Lista

-- Em Haskell, todos valor é de um determinado Tipo, vou apresentar você à alguns deles:

-- :: Int :: 

-- Int é o tipo que representa números Int-eiros
-- notaDe50 é uma Definição do Tipo Int

-- Vamos utilizar definições e funções do tipo Int quando tivermos certeza de que o valor será sempre inteiro

-- Exemplos:

notaDe100 = 100
notasDe100EmDinheiro quantidade = quantidade * notaDe100

-- Perceba que com funções, precisamos nos atentar tanto ao tipo dos argumentos quanto no corpo da função, o calculo em sí.
-- Não dá para vocẽ ter uma quantidade fracionada (nunca vi alguem com 3.1415 notas de 100), logo deve ser um valor Int-eiro
-- e notaDe100 é um valor Int-eiro, como podemos ver acima da função.
-- Logo, podemos concluir que a função notasDe100EmDinheiro é do tipo Int-eiro (Depois veremos que ainda não é bem assim. Mas por hora, acredite nisso)

-- :: Float :: (Flot kkkkkkkkkk)

-- Float é o tipo que representa números decimais
-- pi (a Definição) é do Tipo Float
-- Mais uma vez aos exemplos:

euler = 2.7182
alturaEstimada aPai aMae = (aPai + aMae + 0.13) / 2.0

-- Mais uma vez tomemos cuidado com o tipo da Função, aPai e aMae significam a altura do pai e da mãe, então, não necessáriamente são numeros inteiros,
-- (em 99% dos casos não vai ser, afinal estamos utilizando metros como unidade de medida, mas vai q temos um casal de anôes de 1m)
-- então, é seguro afirmar que aPai e aMae assumem valores decimais, logo são do tipo Float.
-- No corpo da função temos uma divisão, o numerador é uma soma de valores decimais, como determinamos acima, logo, o numerador resulta num valor decimal (Float)
-- e no denominador temos o valor 2.0, que é uma Float, afinal é decimal (mesmo que seja equivalente a só 2, veremos depois porquê usei 2.0 especificamente)
-- Dessa forma, temos uma divisão de Floats, o que resulta num valor do tipo Float

-- [ Char ] 

-- Esse tipo eu não mostrei ainda (Lista de Char ainda é Uma Lista e não um char)
-- Char é o tipo que designa caracteres, ou seja, letras, dígitos, simbolos (Não um texto, apenas o caractere)

genereNeutre = 'E'
pergunta = '?'
digito = '3'

-- Como da para perceber, declaramos caracteres escrevendo oque queremos dentro de '', o que é diferente disso daqui ""
-- esse segundo declara Strings e não caracteres.

-- ... = '<Charactere>'

-- Dado isso, esses caracteres não vem do nada, eles tem base na tabela de ASCII, uma tabela (DUhhhh) que relaciona um número à um caractere
-- https://web.fe.up.pt/~ee96100/projecto/Tabela 20ascii.htm
-- Não! Não Precisa decorar a tabela! (Pegou a referência?)
-- mas é interessante pegar alguns detalhes, como a letra A ter um valor menor que a letra a

-- Junto a esse Tipo, temos uma dupla de funções, ord e chr, que respectivamente, transformam um Char em seu número correspondente da
-- Tabela de ASCII, e transformar um número para seu caractere correspondente, também da tabela de ASCII

-- Para utiliza-los, você precisa, antes de tudo, importar uma bibliotecla, a Data.Char

-- assim:

import Data.Char

-- No topo do arquivo
-- Se você for esperto, é assim que se importa qualquer biblioteca, não só a Data.Char

aMaiusculo = ord 'A'
aMinusculo = ord 'a'
letra65 = chr 65
letra97 = chr 97

-- [ Bool ] 

-- Esse tipo é bem importante
-- é um tipo que possui apenas dois valores, True ou false (Verdadeiro ou falso)
-- Normalmente usamos bools para "responder" ao nome da Função ou Declaração

ehGay = True
ehHetero = False
colocarPontinhos = True
maiorQue10 x = x > 10

-- Você deve ter percebido uns sinais de comparação, como <, >, <=, >=, ==, /=
-- eles comparam dois valores e retornam um (rufem os tambores!!) Bool, afinal, uma comparação
-- ou é verdadeira, ou é falsa

multiploDe2 x = mod x 2 == 2 -- mod é uma função que retorna o resto da divisão inteira de dois números inteiros

-- Operadores de bools

-- As vezes, quando criamos uma função, precisamos de mais informações.
-- por exemplo, para checar se um número é multiplo de 6, ele precisa ser
-- multiplo de 2 e de 3 ao mesmo tempo. Para isso temos o operador && (e)

