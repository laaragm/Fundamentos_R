#atribuição
delta <- 8 #atribui o número 8 à variável delta
class(delta) #diz a classe que delta pertence (classe numérica)
delta = 8L #convenção do R para valor inteiro
class(delta)

#-----------------------------------------------------------------------------------------
#strings
texto = 'olá mundo'
texto
texto2 = "R"
texto2

#-----------------------------------------------------------------------------------------
#vetor
vetor <- c(5,5,5,3,3,4)
vetor #lê todo o vetor
vetor[1] #lê a posição 1 do vetor - lembrando que aqui a 1ª posição não começa em 0
vetor[1] = 3 #altera a posição 1
factor(vetor) #cria um fator a partir de um vetor (nesse caso vai ser 3,4,5)

#-----------------------------------------------------------------------------------------
#matriz
VADeaths #conjunto de dados (forma de matriz) que já vem no R - dataset
colnames(VADeaths) #retorna o nome das colunas
rownames(VADeaths) #retorna o nome das linhas
#acessamos o(os) elemento(s) de uma matriz utilizando a notação:
#nome_variavel[linha, coluna] ou nome_variavel$nome_coluna
VADeaths[, 1] #retorna os dados apenas da primeira coluna do dataset VADeaths
VADeaths[1, ] #retorna os dados apenas da primeira linha do dataset VADeaths
VADeaths[1:3, ] #linhas 1 até 3
length(VADeaths) #tamanho (quantidade de elementos) da matriz
dim(VADeaths) #dimensões da matriz (quantidade de linhas e quantidade de colunas)
nrow(VADeaths) #quantidade de linhas da matriz
#matrizes são geradas usando a função matrix()
matriz = matrix(1:12, ncol = 3) #gera uma matriz de 1 a 12 com 3 colunas
matriz
matriz2 = matrix(12:1, ncol = 3)
matriz2
#todas as funções usuais operam em matrizes (elemento por elemento)
produto = matriz*matriz2
produto

#-----------------------------------------------------------------------------------------
#limpar o console
#cat("\014") 

#-----------------------------------------------------------------------------------------
#data frame
longley #data frame do R
longley[1,3] #retorna o dado que está na primeira linha e na terceira coluna
longley$Unemployed #dados da coluna 'Unemployed' - dados seguidos, um na frente do outro
longley['Unemployed']  #dados da coluna 'Unemployed' - dados formatados na vertical
head(longley) #mostra as primeiras 6 linhas
tail(longley) #mostra as últimas 6 linhas
#usamos data.frame() para criar data frames
alunos_computacao <- data.frame(nomes=c("Lara", "Lorena", "Fúlvio"), 
                                ano_nasc=c(2000,1999,1997), 
                                fez_cg=c("V","V", "F"))
alunos_computacao
names(alunos_computacao) #nomes das colunas
str(alunos_computacao) #estrutura do data frame
dim(alunos_computacao) #número de linhas e de colunas

#-----------------------------------------------------------------------------------------
#listas
ability.cov #lista do R que tem 3 objetos em sequência (cov, center e n.obs)
ability.cov[1] #acessa o primeiro elemento da lista
ability.cov$cov #acessando o elemento pelo nome
#verificando que são objetos diferentes
class(ability.cov$cov) #matrix
class(ability.cov$center) #numetic
ability.cov$cov[, 1:3] #acessando elemento da lista: nome_da_lista$nome_do_objeto[posição]
#para criar uma lista usamos list() - em uma lista podem ter objetos de diferentes tipos
#seq(from,to) é um método para gerar sequências
lista = list(um_vetor=seq(1,5), uma_matriz=matrix(1:6,2,3), 
             um_data_frame=data.frame(nome=c("Lara","Lorena","Fúlvio"),idade=c(19,20,22)))
lista
names(lista) #retorna os nomes dos objetos da lista
lista$um_data_frame #seleção de um objeto da lista

#-----------------------------------------------------------------------------------------
#fatores: variáveis categóricas com um número limitado de valores distintos
#Exemplo: suponha que você tem dados de altura de um grupo de pessoas e quer armazenar
#informações sobre o sexo dos indivíduos
altura = c(1.70, 1.50, 1.57, 1.53, 1.63, 1.97, 1.88)
altura
sexo = c('M', 'F', 'M', 'M', 'F', 'M', 'F')
sexo
fator.sexo = as.factor(sexo)
fator.sexo #levels diz todos os valores possíveis - 'M' e 'F'
mean(altura) #média aritmética da altura
by(altura, fator.sexo, mean) #faz a média de altura de cada fator.sexo (masculino e feminino)

#-----------------------------------------------------------------------------------------
calcula_media <- function(x, y = 0) { 
  media <- (x+y)/2
  return(media)
}
calcula_media(2) #passamos 2 como parâmetro para x e, por default, y fica com 0
calcula_media(6,4) 

