

setwd("C:/Users/Kennedy/Music/mediPreco/Artefatos")
getwd()

arquivo_medipreco = read.csv("avalicao_medipreco.csv", sep = ",", stringsAsFactors = FALSE)

View(arquivo_medipreco)

# FAZENDO O SLICING DO avalicao_medipreco.csv E PEGANDO APENAS AS COLUNAS DA TABELA PRODUTO
arquivo_tbl_produto = arquivo_medipreco[,c(1,2,3)]
arquivo_tbl_produto = as.data.frame(arquivo_tbl_produto)

View(arquivo_tbl_produto)
class(arquivo_tbl_produto)

# FAZENDO O SLICING DO avalicao_medipreco.csv E PEGANDO APENAS AS COLUNAS DA TABELA CATEGORIA
categoria = arquivo_medipreco[, 4]
categoria = as.data.frame(categoria) 

View(categoria)
class(arquivo_tbl_categoria)

# GRAVANDO O DATAFRAME arquivo_tbl_produto
write.csv(arquivo_tbl_produto, file = "arquivo_tbl_produto.csv", sep = ",")
?write.csv

# GRAVANDO O DATAFRAME arquivo_tbl_categoria
write.csv(categoria, file = "arquivo_tbl_categoria.csv", sep = "," )

