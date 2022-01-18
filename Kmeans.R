##Script K-means----
library(stats)
library(scatterplot3d)
library(rgl)
#il faut mettre dans le début du script le nombre de clusters K que l'on a choisit
K=4
cat("Partionnement avec la méthode des K-means")
x1=c(7,3,6,1,6) 
x2=c(1.5,3,2,3,6)
x3=c(2,4,6,5,1)
plot3d(x1,x2,x3,type="s",radius=0.15,col="black") #package rgl (fonctionne pas sur MAC)
,text(x1-0.5,x2,1:5,cex=0.75)
X=data.frame(x1,x2,x3) 
X
km=kmeans(X, center=K)
print(km)
print(table(km$cluster)) #donne le nombre d'individus par cluster
plot3d(x1,x2,x3,radius=2,col=c("green","red","black")[km$cluster], size =20) #que sur PC
scatterplot3d(x1,x2,x3,color=c("green","red","black")[km$cluster])
"# scatterplot3D fonctionne sur Mac et PC
#plot(x1+x2+x3,cex=1.5,col=c("black","green","red")) #en 2D pas interpretable


##Script pour avoir le K optimum  avec K-means----
#Mettre le nombre d'individus moins 1
N=4
#X=TD8Donnees
#X=X[,-1]#retire le nom des individus (si existant)
X=as.matrix(X)
#itération pour déterminer K
nbr=c()
for(k in 1:N){   #modifier 1:19 en fonction du nombre d'individus
  tmp=kmeans(X,centers=k)
nbr[k]=tmp$withinss/tmp$totss
}

plot(1:N,nbr,xlim=c(1,N),ylab="R carré semi-partiel",xlab="nombre de groupes",type="b"
     ,main="R carré semi-partiel vs nb de groupes")




#pairs(X,col=c("green","blue","black")[km$cluster])
plot(X,col=c("green","blue","black")[km$cluster])
#K=readline(prompt="Press [enter] to continue")
cat("Donnez le nombre de clusters K     ")
K=scan(quiet=FALSE,n=1)
#K=as.integer(readLines(n = 1))
#K=3
#K=scan(n=1)


