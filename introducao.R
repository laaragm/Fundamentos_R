getwd() #mostra o diretório de trabalho padrão

setwd("/home/larag/Desktop/Fundamentos R/") #define o diretório de trabalho 

class(iris) #saber a classe de iris(data frame)

iristeste = iris #cópia do conjunto de dados iris
save(iristeste, file="iristeste.Rdata") #salva o objeto em disco
rm(iristeste) #remove 
iristeste #retorna o conjunto de dados de iristeste
load(file = "iristeste.Rdata") #carrega a cópia do arquivo físico (iristeste.Rdata) 
iristeste

x = c(12, 54, 23, 75) #cria um vetor x (a função c() vem de combine)
y = c(24, 15, 63, 19) #vetor y
plot(x, y) #gera um gráfico de dispersão padrão com os dados de x e y 

quit()
