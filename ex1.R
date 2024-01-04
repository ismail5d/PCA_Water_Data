head(Ismail_Akouz_EAUX)
summary(Ismail_Akouz_EAUX)
eaux <- prcomp(Ismail_Akouz_EAUX[,6:14], scale = TRUE)
summary(eaux)
eaux
biplot(eaux, scale = 0)
cor.mat = cor(Ismail_Akouz_EAUX[,6:13])
round(cor.mat, 2)
install.packages("FactoMineR")
library(FactoMineR)
install.packages("factoextra")
res.Ismail_Akouz_EAUX = PCA(Ismail_Akouz_EAUX, quanti.sup = 14, quali.sup = 1:5, graph = FALSE)
round(res.Ismail_Akouz_EAUX$eig[1:8,-2],3)
res.Ismail_Akouz_EAUX$eig
library("factoextra")
fviz_eig(res.Ismail_Akouz_EAUX)
fviz_eig(res.Ismail_Akouz_EAUX, addlabels=TRUE, hjust = -0.3)
res.Ismail_Akouz_EAUX$ind$contrib[,1:3]
round(res.Ismail_Akouz_EAUX$var$contrib,5)
fviz_pca_var(res.Ismail_Akouz_EAUX,invisible = "quanti.sup",repel = TRUE)
res.Ismail_Akouz_EAUX$ind$coord[,1:2]
fviz_pca_ind(res.Ismail_Akouz_EAUX,repel = TRUE)
install.packages("ggrepel")
library(ggrepel)
fviz_pca_var(res.Ismail_Akouz_EAUX,repel = TRUE)
# Contributions des variables à PC1
fviz_contrib(res.Ismail_Akouz_EAUX, choice = "var", axes = 1, top = 10)
# Contributions des variables à PC2
fviz_contrib(res.Ismail_Akouz_EAUX, choice = "var", axes = 2, top = 10)
# Individus sur les dimensions 2 et 3
fviz_pca_ind(res.Ismail_Akouz_EAUX, axes = c(1, 3))







