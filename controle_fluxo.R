x = 2
if(x >= 3){
  Sys.time() 
}else if(x == 1){
  Sys.Date()
}else{
  Sys.info()
}

x <- 1:10 #cria um vetor de 1 a 10
soma <- 0
for(i in x){ #poderia também ser: i in 1:10 
  soma <- soma+x[i]
}
soma
soma = 0
sum(x)


