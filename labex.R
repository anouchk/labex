library(data.table)

#set working directory
setwd('/Users/analutzky/Desktop')

Table_labex=fread('labex (1).csv')

# retirer les retours à la ligne et les tabulations
Table_labex$info_gene=gsub('\\n|\\t','',Table_labex$info_gene)

#on ne garde que les 141
Table_labex=Table_labex[grepl('LABX',Table_labex$`liens-href`),]

write.csv2(as.data.frame(Table_labex),file='141_labex.csv',fileEncoding = "UTF8")




Table_labex=Table_labex[order(nom_court),]
> grep("Lluis",Table_labex$info_gene)
integer(0)
> grep("Darragh",Table_labex$info_gene)
integer(0)
> grep("Pasteur",Table_labex$info_gene)
[1] 81
> Table_labex[81,]