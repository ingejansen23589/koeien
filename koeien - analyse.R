setwd("~/koeien")

#inladen van de originele data
koedata <-read.csv("koeien - absolute maten.csv", sep=";")

#seed wordt gedefinieerd zodat de uitkomst reproduceerbaar is
set.seed(20)

#kmeans clustering wordt gebruikt om een indeling in 3 groepen te maken
clusters <- kmeans(koedata[,1:8], 3, nstart=100)

koedata$cluster <- clusters$cluster

#De variabelen worden tegen elkaar geplot op basis van Van den Bosch' verhoudingen
plot(koedata$Romplengte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Romplengte (cm)")
legend(128,168, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Borstdiepte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Borstdiepte (cm)")
legend(128,74, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Borstbreedte~koedata$Borstdiepte, col=koedata$cluster, pch=koedata$Ras, xlab="Borstdiepte (cm)", ylab="Borstbreedte (cm)")
legend(69,47, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Bekkenbreedte~koedata$Heupbreedte, col=koedata$cluster, pch=koedata$Ras, xlab="Heupbreedte (cm)", ylab="Bekkenbreedte (cm)")
legend(53,52, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Kruislengte~koedata$Romplengte, col=koedata$cluster, pch=koedata$Ras, xlab="Romplengte (cm)", ylab="Kruislengte (cm)")
legend(160,55, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)


#alleen Zwartbles en Zwartbont
set.seed(20)
koedata <- koedata[1:10,]
clusters <- kmeans(koedata[,1:8], 2, nstart=100)

koedata$cluster <- clusters$cluster

#plots
plot(koedata$Romplengte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Romplengte (cm)")
legend(130,168, legend=c("Zwartbont", "Zwartblaar"), pch=1:2)
plot(koedata$Borstdiepte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Borstdiepte (cm)")
legend(130,74, legend=c("Zwartbont", "Zwartblaar"), pch=1:2)
plot(koedata$Borstbreedte~koedata$Borstdiepte, col=koedata$cluster, pch=koedata$Ras, xlab="Borstdiepte (cm)", ylab="Borstbreedte (cm)")
legend(69,47, legend=c("Zwartbont", "Zwartblaar"), pch=1:2)
plot(koedata$Bekkenbreedte~koedata$Heupbreedte, col=koedata$cluster, pch=koedata$Ras, xlab="Heupbreedte (cm)", ylab="Bekkenbreedte (cm)")
legend(53,52, legend=c("Zwartbont", "Zwartblaar"), pch=1:2)
plot(koedata$Kruislengte~koedata$Romplengte, col=koedata$cluster, pch=koedata$Ras, xlab="Romplengte (cm)", ylab="Kruislengte (cm)")
legend(160,55, legend=c("Zwartbont", "Zwartblaar"), pch=1:2)


#Alleen K1
koedata <- koedata[c(1,3,5,7,9,11),]

set.seed(20)
clusters <- kmeans(koedata[,1:8], 3, nstart=100)

koedata$cluster <- clusters$cluster

#plots
plot(koedata$Romplengte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Romplengte (cm)")
legend(128,168, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Borstdiepte~koedata$Schofthoogte, col=koedata$cluster, pch=koedata$Ras, xlab="Schofthoogte (cm)", ylab="Borstdiepte (cm)")
legend(128,74, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Borstbreedte~koedata$Borstdiepte, col=koedata$cluster, pch=koedata$Ras, xlab="Borstdiepte (cm)", ylab="Borstbreedte (cm)")
legend(70,47, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Bekkenbreedte~koedata$Heupbreedte, col=koedata$cluster, pch=koedata$Ras, xlab="Heupbreedte (cm)", ylab="Bekkenbreedte (cm)")
legend(54.5,52, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
plot(koedata$Kruislengte~koedata$Romplengte, col=koedata$cluster, pch=koedata$Ras, xlab="Romplengte (cm)", ylab="Kruislengte (cm)")
legend(162,55, legend=c("Zwartbont", "Zwartblaar", "Roodbont"), pch=1:3)
