
#########################################################################################
# IMPORTANT :
# Please ensure you have the latest data.table package installed,
# as the 1.9.4 or any lower version does contain a bug which causes buffer
# overflow, ( ... a mismatch between variable declaration and it's memory space allocated)
# leading to R crash when loading the file ! 
#########################################################################################
# INITIAL FILE MANIPULATIONS :
#########################################################################################
# These files should be extracted to your working directory BEFORE you launch this script:
# features.txt ; subject_test.txt; subject_train.txt
# X_test.txt ; y_test.txt
# X_train.txt ; y_train.txt
# As an OUTCOME, these two files will be generated in your working directory:
# ReducedDataSet.csv , FinalDataSet.csv
######################################################################################### 




library(data.table)
# I STRONGLY ADVISE to check this, before you load the file from your working directory :
packageVersion('data.table')
# If a version 1.9.4 or below is displayed,then install the last one before you start :
# library(devtools)
# install_github("Rdatatable/data.table",  build_vignettes = FALSE)

######## 1st File load :

Headers<-fread("features.txt")
HeaderMerge<-Headers[,V2]
Amerge<-fread("X_test.txt")
colnames(Amerge)<-as.vector(HeaderMerge)
Am<-fread("y_test.txt")
TSTSub<-fread("subject_test.txt")
Amerge<-cbind(Am,TSTSub,Amerge)

####### 2nd File load :

Bmerge<-fread("X_train.txt")
colnames(Bmerge)<-as.vector(HeaderMerge)
Bm<-fread("y_train.txt")
TRSub<-fread("subject_train.txt")
Bmerge<-cbind(Bm,TRSub,Bmerge)

tables()

####### Data tables append to create merged data table:

Merged<-rbind(Amerge,Bmerge)
HeaderMerge2<-c("Activity","Subject",HeaderMerge)
colnames(Merged)<-HeaderMerge2

######## Extract calculated data from a reduced dataset :

a<-c(1,2,grep("mean",HeaderMerge2),grep("std",HeaderMerge2))
HMA<-HeaderMerge2 [a]
ReducedDataSet<-subset(Merged,select=HMA)
write.csv(ReducedDataSet, " ReducedDataSet.csv" )

####### Apply means and sort ordered dataset :
N<-ReducedDataSet[,lapply(.SD,mean),by="Activity,Subject"]
FinalDataSet<-N[order(Activity,Subject)]
write.csv(FinalDataSet, "FinalDataSet.csv")
dim(ReducedDataSet)
dim(FinalDataSet)



