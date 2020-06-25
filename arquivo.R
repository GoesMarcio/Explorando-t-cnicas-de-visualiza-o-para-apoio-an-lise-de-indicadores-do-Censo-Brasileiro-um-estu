library(readxl)
atlas2013_dadosbrutos_pt <- read_excel("C:/Users/marci/Desktop/facul/t1 indetregora 2/integradora/atlas2013_dadosbrutos_pt.xlsx", sheet = "UF 91-00-10")
View(atlas2013_dadosbrutos_pt)

dados<-atlas2013_dadosbrutos_pt
dados[3]<-NULL
View(dados)

dCor <- cor(dados)
write.csv2(dCor, "Correlacao.csv")

dados <- subset(dados, dados$ANO != 1991)
lm4 <- lm(MULH65A69 + MULH70A74 + MULH75A79 + MULHER80 ~ T_ENV + T_SUPER25M + I_ESCOLARIDADE + I_FREQ_PROP + PEA18M, data = dados)
summary(lm4)