####Installing Packages####----------
#install.packages("foreign")
library('foreign')


###Save and Load####

Project_Dir ="C:/Users/akhil/Desktop/R/Project_Quant"
RData=paste(Project_Dir,"/","Project_Quant.RData",sep="")
save.image(file=RData)

load(file=RData)

####Importing Data####---------------
Dir="C:/Users/akhil/Desktop/R/Quant/Sample_Stock_Data/Raw_Data"

File_Name1= "COMPANY_RATIOS_KEY.TXT";
File = paste(Dir,"/",File_Name1,sep="")
Col_Names=read.table(File,sep=",")

File_Name= "COMPANY_RATIOS.TXT";
File = paste(Dir,"/",File_Name,sep="")
Data=read.table(File,sep=",")
colnames(Data)=Col_Names[,1]


#Raw_Data=read.dta(file, convert.dates = TRUE, convert.factors = TRUE,missing.type = FALSE,convert.underscore = FALSE, warn.missing.labels = TRUE)



