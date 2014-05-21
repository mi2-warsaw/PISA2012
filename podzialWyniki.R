length(na.omit(polska$PR220Q01))

#ST04Q01 plec
#ST28Q01 ksiązki
#PM00FQ01 pocz się matma
#PM998Q04T kończy sie matma

#PR220Q01 zaczyna się czytanie
#PR466Q06 koczy się czytanie
#PS131Q02D zaczyna się scie
#PS527Q04T koczy się scie

poczM<-which(names(polska)== "PM00FQ01")
konM<-which(names(polska)== "PM998Q04T")

poczC<-which(names(polska)== "PR220Q01")
konC<-which(names(polska)== "PR466Q06")

poczS<-which(names(polska)== "PS131Q02D")
konS<-which(names(polska)== "PS527Q04T")

ile_punktow<- function(x, pocz, kon){
  suma<-0
  for (i in pocz:kon){
    if (x[i]=="Score 1") {suma<-suma+1}
    if (x[i]=="Score 2") {suma<-suma+2}
  }
  return(suma)
}



polska <- read.csv("/home/students/bioinf/m/mk291505/polaczone.csv", sep=",", h=TRUE)




matm <- apply(polska, 1, ile_punktow, pocz=poczM, kon=konM)
czyt <- apply(polska, 1, ile_punktow, pocz=poczC, kon=konC)
scie <- apply(polska, 1, ile_punktow, pocz=poczS, kon=konS)



analiza<-data.frame(plec=polska[,"ST04Q01"], ksiazki=polska[,"ST28Q01"], 
                    matematyka=matm, czytanie=czyt, nauki=scie)

analiza<-analiza[analiza$ksiazki != "N",]
analiza<-analiza[analiza$ksiazki != "I",]
analiza<-analiza[analiza$ksiazki != "M",]

dim(analiza)

head(analiza)

sum(scie == 0)
sum(matm == 0)
sum(czyt == 0)


ind <- analiza2[,"Podzial"] == "Czytanie" & analiza2[,"Wynik"] == 0
ind2 <- analiza2[,"Podzial"] == "Nauki" & analiza2[,"Wynik"] == 0

ktore1 <- which(ind == TRUE)
ktore2 <- which(ind2 == TRUE)
ktore1 == ktore2

c(TRUE, FALSE, TRUE) & c(FALSE, FALSE, TRUE)

ind3 <- ind & ind2
ind3
sum(ind3)

library(ggplot2)
levels(analiza$ksiazki)

qplot(x=nauki, data=analiza, col=plec, facets=ksiazki~plec,
      geom="histogram", fill=plec, xlab="Wyniki z nauk ścisłych", ylab="Liczba uczniów", 
      main="Wynik otrzymany w teście z nauk ścisłych z podziałem na płeć i liczbe posiadanych książek")

qplot(x=czytanie, data=analiza, col=plec, facets=ksiazki~plec,
      geom="histogram", fill=plec, xlab="Wyniki z czytania", ylab="Liczba uczniów", 
      main="Wynik otrzymany w teście z czytania z podziałem na płeć i liczbe posiadanych książek")

qplot(x=matematyka, data=analiza, col=plec, facets=ksiazki~plec,
      geom="histogram", fill=plec, xlab="Wyniki z matematyki", ylab="Liczba uczniów", 
      main="Wynik otrzymany w teście z matematyki z podziałem na płeć i liczbe posiadanych książek")


?qplot
table(analiza$plec)

sum(polska[, "ST28Q01"] == "N")
sum(polska[, "ST28Q01"] == "I")
sum(polska[, "ST28Q01"] == "M")
levels(polska[, "ST28Q01"])



#### potrojny zbior danych


analiza2<- data.frame(plec=rep(analiza$plec, each=3),ksiazki=rep(analiza$ksiazki,each=3))
4555*3
analiza2[1:12,]
analiza2[,3]<-numeric(4555*3)
analiza2[,3]
for (i in 1:13665){
  analiza2[i,3] <- wyniki[(i+2)%/%3,(i+2)%%3+1]
    
}


analiza2[,4] <-rep(c("Matematyka", "Czytanie", "Nauki"),4555)
names(analiza2) <- c(names(analiza2)[1:2],"Wynik","Podzial")
names(analiza2)
head(analiza2)
qplot(x=Wynik, data=analiza2, facets=ksiazki~Podzial,
      geom="histogram", fill="lightblue", colour="black")



analiza2[1:12,]

wyniki <- analiza[,3:5]
unclass(wyniki)