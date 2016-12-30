####Installing Packages####----------
#install.packages("foreign")
library(foreign)
library(help=foreign)
install.packages("rio")

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

###############################
#Data Chapter 4 Quant
###############################
library(foreign)
dir="/Users/akhil/Desktop/R/Quant/Classroom_Labs/Chapter4"
file_name="Data_Ch4.dta"
file=paste(dir,"/",file_name,sep="")
Data_Ch4=read.dta(file)

###############################
# Calculating Price Return
###############################
Data_Ch4_Price=Data_Ch4[,1:4]
Ticker_list=unique(Data_Ch4_Price[,1])
for(j in 1:length(Ticker_list)){
Ticker= Ticker_list[j]
L=length(Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,3])
Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,"priceRt3"] =NA
if(L>3){ 
  for(i in 4:L ){
    Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,"priceRt3"][i]=(Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,4][i]-Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,4][i-3])/Data_Ch4_Price[Data_Ch4_Price[,1]==Ticker,4][i-3]
  } }}





