
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

### Importation de la premi?re base de donn?es li? ? la mati?res
### obtenue apr?s un webscrapping avec octoparse

data1 <- read.csv("C:/Users/fofna/OneDrive/Bureau/Dossiers 2022-2023/IA 2022-2023/Projet IA 2022-23/fichier_final.csv")

View(data1) ## pour voir toute la base de donn
head(data,5) ## voir les cinq premi?re ligneView(data_2)
attach(data1)

## Summary de la base pour faire la statistique de notre base de donn?es
summary(data1)

## La fonction ci-dessous permet de voir le nombre
## de mati?re que nous avons 
table(matieres)


## La fonction ci-dessous permet de graphique de ces mati?res
x11()
barp1 <- barplot(table(matieres),
                 main = "Histogramme des mati?res",
                 ylab = "Frequence",xlab = "Mati?res",
                 col = c("cyan", "beige","pink",
                         "grey","Salmon","turquoise",
                         "purple", "blue", "light green", 
                         "green", "yellow", "gold","light blue",
                         "plum"),ylim=c (0, 150),
                 args.legend = list(x = "top"),
                 legend.text = rownames(table(matieres)))
text(barp1, table(matieres)+ 0.01, labels = table(matieres))

## Fonction pour les diagramme en camembert
pie(table(matieres), main = "Diagramme camembert des mati?res",
    col = c("cyan", "beige","pink",
            "grey","Salmon","chocolate",
            "purple", "dark blue"))



##########################################################

### Autre visualisation lié aux colorant utilis?e pour colorer les mati?res des artices
### obtenue egalement apr?s un webscrapping en utilisant octoparse

## La fonction ci-dessous permet de voir le repartion
## des colorants que nous avons 
table(produits_coloration)

##
barp2 <- barplot(table(produits_coloration),
                main = "Histogramme produits de coloration",
                ylab = "Frequence",xlab = "Produits",
                col = c("cyan", "beige","pink",
                        "grey","Salmon","chocolate",
                        "purple", "dark blue"),ylim=c (0, 150),
                args.legend = list(x = "topright"),
                legend.text = rownames(table(produits_coloration)))
text(barp2, table(produits_coloration)+ 0.5, 
     labels = table(produits_coloration))

## Fonction pour les diagramme en camembert
pie(table(produits.de.coloration), main = "Diagramme camembert des mati?res",
    col = c("dark green","turquoise","orange","red", "light green","green"))


######################################################
###Autre visualisation lié aux fibre utilis?e pour es mati?res des artices
### obtenue egalement apr?s un webscrapping en utilisant octoparse

table(etape)

x11()
barp3 <- barplot(table(etape),
                main = "Histogramme sant? humaine",
                ylab = "Frequence",xlab = "Les ?tapes",
                col  = c("dark cyan", "dark green", "dark blue",
                         "beige","pink",
                         "grey","chocolate","chocolate"), ylim=c (0, 150),
                args.legend = list(x = "top"),
                legend.text = rownames(table(etape)))
text(barp3, table(etape)+ 0.01, labels = table(etape))



##" Le pourcentage moyen par matères
aggregate(x= pourcentage_matieres,     
          
          # Specify group indicator
          by = list(matieres),      
          
          # Specify function (i.e. mean)
          FUN = mean)

##" L'écart-type par matères
aggregate(x= pourcentage_matieres,     
          
          # Specify group indicator
          by = list(matieres),      
          
          # Specify function (i.e. mean)
          FUN = sd)


## 

##" Le pourcentage moyen par produit coloratif
aggregate(x= pourcentage_matieres,     
          
          # Specify group indicator
          by = list(produits_coloration),      
          
          # Specify function (i.e. mean)
          FUN = mean)
