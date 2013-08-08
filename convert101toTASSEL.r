convert101toTASSEL<-function(x){
  require(plyr)
  x<-arrange(x,chrom,pos);
  x[x==-1]<-"T";
  x[x==1]<-"A";
  x[x==0]<-"W";
  # x[x$pos=="A",3]<-1;
  x[,1]<-as.character(x[,1])
  colnames(x)[1]<-"rs"
  alleles<-"A/T"
  strand<-"+"
  assembly="NA"
  
  center="UNEAK"
  protLSID="GBS"
  assayLSID="NoRef"
  panelLSID="Custom"  
  QCcode="QC+"
  
  x<-data.frame(rs=x[,1],alleles,x[,c(2,3)],strand,assembly, center,protLSID, assayLSID, panelLSID, QCcode, x[,-c(1,2,3)])
  return(x);
  
}
