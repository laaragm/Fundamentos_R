#file.choose() abre uma caixa de diálogo para você selecionar o arquivo; pode também 
#colocar o caminho completo do arquivo se for mexer só com um específico
#header = TRUE ; se existir nomes de coluna, estes serão importados para o data frame
#sep é o separador que vai definir a separação dos dados no data frame
x = read.csv(file.choose(), header = TRUE, sep = ";")
x #data frame com os dados

#odbc
install.packages("RODBC")
library(RODBC)
#conexão com o banco de dados
conexao <- odbcDriverConnect('Driver={SQL Server};Server=localhost;Database=storedb;
                             Trusted_Connection=true')
sqltable <- sqlFetch(conexao, sqltable)	#lê uma tabela e a carrega em um data frame
resultado <- sqlQuery(conexao, "select * from dbo.vendas") #faz a busca no db
resultado #objeto data frame criado a partir do resultado da busca no banco de dados
odbcClose(conexao) #fecha a conexão

install.packages("xlsx")
library(xlsx)
dados = read.xlsx(file.choose(), sheetIndex = 1)


