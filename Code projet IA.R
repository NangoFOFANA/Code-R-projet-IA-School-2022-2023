
### Code R du projet #####
#### Chargement des librairies

library(lmtest)
library(ggplot2)
library(normtest)
library(factoextra)
library(FactoMineR)
library(car)
library(dplyr,quietly = T)
library(questionr)
library(data.table)
library(FactoMineR)
library(factoextra)
library(corrplot)
library(ggcorrplot)
library(RColorBrewer)
library(RColorBrewer)

### Importation de la première base de données lié à la matières
### obtenue après un webscrapping avec octoparse

data1 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_2.csv")

View(data1) ## pour voir toute la base de donn
head(data,5) ## voir les cinq première ligneView(data_2)
attach(data1)

## Summary de la base pour faire la statistique de notre base de données
summary(data1)

## La fonction ci-dessous permet de voir le nombre
## de matière que nous avons 
table(matière)


## La fonction ci-dessous permet de graphique de ces matières
x11()
barp1 <- barplot(table(matière),
                 main = "Histogramme des matières",
                 ylab = "Frequence",xlab = "Matières",
                 col = c("cyan", "beige","pink",
                         "grey","Salmon","turquoise",
                         "purple", "blue", "light green", 
                         "green", "yellow", "gold","light blue",
                         "plum"),ylim=c (0, 150),
                 args.legend = list(x = "top"),
                 legend.text = rownames(table(matière)))
text(barp1, table(matière)+ 0.01, labels = table(matière))

## Fonction pour les diagramme en camembert
pie(table(matière), main = "Diagramme camembert des matières",
    col = c("cyan", "beige","pink",
            "grey","Salmon","chocolate",
            "purple", "dark blue"))



##########################################################

### Importation de la deuxième base de données lié 
### au colorant utilisée pour colorer les matières des artices
### obtenue egalement après un webscrapping en utilisant octoparse

### Nous ferons également les même étapes que la première data

data_1 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_1.csv")

attach(data_1)
View(data_1)

## Summary de la base pour faire la statistique de notre base de données
summary(data_1)

## La fonction ci-dessous permet de voir le repartion
## des colorants que nous avons 
table(produits.de.coloration)

##
barp2 <- barplot(table(produits.de.coloration),
                main = "Histogramme produits de coloration",
                ylab = "Frequence",xlab = "Produits",
                col = c("cyan", "beige","pink",
                        "grey","Salmon","chocolate",
                        "purple", "dark blue"),ylim=c (0, 150),
                args.legend = list(x = "topright"),
                legend.text = rownames(table(produits.de.coloration)))
text(barp2, table(produits.de.coloration)+ 0.5, 
     labels = table(produits.de.coloration))

## Fonction pour les diagramme en camembert
pie(table(produits.de.coloration), main = "Diagramme camembert des matières",
    col = c("dark green","turquoise","orange","red", "light green","green"))


######################################################
### Importation de la troisième base de données lié 
### aux fibre utilisée pour es matières des artices
### obtenue egalement après un webscrapping en utilisant octoparse

### Nous ferons également les même étapes que la première data

data_3 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_3.csv")

View(data_3)
attach(data_3)
summary(data_3)
table(étape)

x11()
barp3 <- barplot(table(étape),
                main = "Histogramme santé humaine",
                ylab = "Frequence",xlab = "Les étapes",
                col  = c("dark cyan", "dark green", "dark blue",
                         "beige","pink",
                         "grey","chocolate","chocolate"), ylim=c (0, 150),
                args.legend = list(x = "top"),
                legend.text = rownames(table(étape)))
text(barp3, table(étape)+ 0.01, labels = table(étape))
