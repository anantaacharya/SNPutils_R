
pctoTASSEL<-function(x){
  require(bio3d)
  pc<-pca.xyz(x)
 # print(plot(pc))
  o<-pc$z[,1:3]
  o<-data.frame(o)
  nn<-as.character(rownames(o))
  o2<-data.frame(nn,o)
  o2[,1]<-as.character(o2[,1])
 
  frow=c("<Numeric>",rep("",3))
  srow=c("<Trait>","PC1", "PC2", "PC3");
  coln<-c("V1", "V2","V3", "V4")
  colnames(o2)=c("V1", "V2","V3", "V4")
  tt3<-rbind(frow,srow,o2)
 

  tt3[,1]<-as.character(tt3[,1])
  tt3[1,1]<-"<Covariate>"
  tt3[2,1]<-"<Trait>"
  return(list(pc,tt3))
}
