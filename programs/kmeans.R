head(iris)
iris_bak<-iris[,1:4]
vmax<-apply(iris_bak,2,max)
vmin<-apply(iris_bak,2,min)

out<-t(apply(iris_bak,1,function(x){(x-vmin)/(vmax-vmin)}))
set.seed(100)
cluster.out<-kmeans(out,3,nstart = 10)
iris$type=cluster.out$cluster
table(iris[,5:6])
cluster.out

hc<-hclust(dist(out))
plot(hc)
rect.hclust(hc,k=3)
iris$type=cutree(hc,k=3)
table(iris[,5:6])
#DB method to evaluate the performance of clustering
readyK = 2:10
readyValue = NULL
for (k in readyK) {
  cluster.out<-kmeans(out,k,nstart=10)
  outnew<-cbind(out,type=cluster.out$cluster)
  tmpvalue=NULL
  for (i in 1:k) {
    tmp<-NULL
    for (j in 1:k) {
      if(i!=j){
        vcenter_i=cluster.out$centers[i,]
        vcenter_j=cluster.out$centers[j,]
        vdata_i=outnew[outnew[,5]==i,1:4]
        vdata_j=outnew[outnew[,5]==j,1:4]
        wi=mean(apply(vdata_i-matrix(rep(vcenter_i,nrow(vdata_i)),ncol=length(vcenter_i),byrow=T),1,function(x){sqrt(sum(x^2))}))
        wj=mean(apply(vdata_j-matrix(rep(vcenter_j,nrow(vdata_j)),ncol=length(vcenter_j),byrow=T),1,function(x){sqrt(sum(x^2))}))
        cij=sqrt(sum((vcenter_i-vcenter_j)^2))
        tmp=c(tmp,(wi+wj)/cij)
      }
    }
    tmpvalue=c(tmpvalue,max(tmp))
  }
  readyValue=c(readyValue,mean(tmpvalue))
}
plot(readyK,readyValue,pch=20,col='blue')
lines(readyK,readyValue,col='red')

library(cluster)
library(fpc)
pamk(out)
plot(pam(out,pamk(out)$nc))

library(mclust)
d_clust<-Mclust(as.matrix(out),G=1:20)
m.best<-dim(d_clust$z)[2]
m.best
plot(d_clust)
pam
