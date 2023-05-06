
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

### Importation de la premi�re base de donn�es li� � la mati�res
### obtenue apr�s un webscrapping avec octoparse

data1 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_2.csv")

View(data1) ## pour voir toute la base de donn
head(data,5) ## voir les cinq premi�re ligneView(data_2)
attach(data1)

## Summary de la base pour faire la statistique de notre base de donn�es
summary(data1)

## La fonction ci-dessous permet de voir le nombre
## de mati�re que nous avons 
table(mati�re)


## La fonction ci-dessous permet de graphique de ces mati�res
x11()
barp1 <- barplot(table(mati�re),
                 main = "Histogramme des mati�res",
                 ylab = "Frequence",xlab = "Mati�res",
                 col = c("cyan", "beige","pink",
                         "grey","Salmon","turquoise",
                         "purple", "blue", "light green", 
                         "green", "yellow", "gold","light blue",
                         "plum"),ylim=c (0, 150),
                 args.legend = list(x = "top"),
                 legend.text = rownames(table(mati�re)))
text(barp1, table(mati�re)+ 0.01, labels = table(mati�re))

## Fonction pour les diagramme en camembert
pie(table(mati�re), main = "Diagramme camembert des mati�res",
    col = c("cyan", "beige","pink",
            "grey","Salmon","chocolate",
            "purple", "dark blue"))



##########################################################

### Importation de la deuxi�me base de donn�es li� 
### au colorant utilis�e pour colorer les mati�res des artices
### obtenue egalement apr�s un webscrapping en utilisant octoparse

### Nous ferons �galement les m�me �tapes que la premi�re data

data_1 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_1.csv")

attach(data_1)
View(data_1)

## Summary de la base pour faire la statistique de notre base de donn�es
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
pie(table(produits.de.coloration), main = "Diagramme camembert des mati�res",
    col = c("dark green","turquoise","orange","red", "light green","green"))


######################################################
### Importation de la troisi�me base de donn�es li� 
### aux fibre utilis�e pour es mati�res des artices
### obtenue egalement apr�s un webscrapping en utilisant octoparse

### Nous ferons �galement les m�me �tapes que la premi�re data

data_3 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/data_3.csv")

View(data_3)
attach(data_3)
summary(data_3)
table(�tape)

x11()
barp3 <- barplot(table(�tape),
                main = "Histogramme sant� humaine",
                ylab = "Frequence",xlab = "Les �tapes",
                col  = c("dark cyan", "dark green", "dark blue",
                         "beige","pink",
                         "grey","chocolate","chocolate"), ylim=c (0, 150),
                args.legend = list(x = "top"),
                legend.text = rownames(table(�tape)))
text(barp3, table(�tape)+ 0.01, labels = table(�tape))