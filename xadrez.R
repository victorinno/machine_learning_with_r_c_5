library(dplyr)

mesa <- data.frame(seq(1,8*8,1), rep(0, 8*8))

nome_pecas <- c("peao", "torre", "cavalo", "bispo", "rainha", "rei")
cor_pecas <- c("branca", "preto")
indice <- c(1:12)

pecas <- data.frame(indice, rep(nome_pecas,2), c(rep(cor_pecas[1], 6), rep(cor_pecas[2], 6)))
names(pecas) <- c("indice", "nome", "cor")
pecas <- tbl_df(pecas) %>%
          mutate(cor = as.factor(cor)) %>%
          group_by(cor)

posicaoInicialBrancas <- function(){
  pecas_brancas <- filter(pecas, cor == "branca")
  
}
        
          