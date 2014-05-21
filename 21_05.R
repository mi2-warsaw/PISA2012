# polska2 to po prostu zwykly zbior POLACZONE
# ale w tym momencie zbior polska bez indeksu byl zajety
#

ile_punktow<- function(x, pocz, kon){
  suma<-0
  for (i in pocz:kon){
    if (x[i]=="Score 1") {suma<-suma+1}
    if (x[i]=="Score 2") {suma<-suma+2}
  }
  return(suma)
}



poczM<-which(names(polska2)== "PM00FQ01")
konM<-which(names(polska2)== "PM998Q04T")
matm <- apply(polska2, 1, ile_punktow, pocz=poczM, kon=konM)

polska <- polska2[,c(11:263)] 


fajne <- data.frame( polska[,c(231,240,251)], matm)
N12 <- which(fajne[,12] %in% c("N", "M", "I")) # N13 i N14 maja braki w tych samych miejscach co N12
fajne <- fajne[-N12,]



par(mfrow=c(3,1))

barplot(table(as.character(fajne[-N12,12])), main=names(fajne)[12])
barplot(table(as.character(fajne[-N13,13])), main=names(fajne)[13])
barplot(table(as.character(fajne[-N14,14])), main=names(fajne)[14])


colnames(fajne) <- c("Make_Friends_Easily",
  "School_Is_a_Waste_Of_Time",
  "Could_Perform_Well_If_I_Wanted", "Score")
head(fajne)
library(ggplot2)
library(reshape)
fajne_fajne3  <- melt(
  fajne, 
  id = 4, 
  na.rm = TRUE
) 
colnames(fajne_fajne3)

qplot(x=Score, data=fajne_fajne3, facets=variable~value,
      geom="histogram")