library("openxlsx")
worksheet_M1101 <- read.xlsx(paste(getwd(), "/Excel_Files/", "KSH_M1101_2023.xlsx", sep = ""), sheet = "KSH_M1101_2023", startRow = 1, colNames = FALSE)
dim(worksheet_M1101)#37772 sor és 9 oszlop
worksheet_M1101 <- worksheet_M1101[, c(3, 5, 9)]
View(worksheet_M1101)
colnames(worksheet_M1101) <- c("M003", "SOR_KOD", "ERTEK")

worksheet_M1101$SOR_KOD <-  substr(worksheet_M1101$SOR_KOD, nchar(worksheet_M1101$SOR_KOD) - 3, nchar(worksheet_M1101$SOR_KOD))
worksheet_M1101[is.na(worksheet_M1101)] <- 0
worksheet_M1101[, c("ERTEK")] <- sapply(worksheet_M1101[, c("ERTEK")], as.numeric)
worksheet_M1101$ERTEK <-  round(worksheet_M1101$ERTEK, 0)

worksheet_M1101$OSZLOP_KOD <- 1



worksheet_M1102 <- read.xlsx(paste(getwd(), "/Excel_Files/", "KSH_M1102_2023.xlsx", sep = ""), sheet = "KSH_M1102_2023", startRow = 1, colNames = FALSE)
dim(worksheet_M1102)#3976 sor és 9 oszlop
worksheet_M1102 <- worksheet_M1102[, c(3, 5, 9)]
View(worksheet_M1102)
colnames(worksheet_M1102) <- c("M003", "SOR_KOD", "ERTEK")

worksheet_M1102$SOR_KOD <-  substr(worksheet_M1102$SOR_KOD, nchar(worksheet_M1102$SOR_KOD) - 3, nchar(worksheet_M1102$SOR_KOD))
worksheet_M1102[is.na(worksheet_M1102)] <- 0
worksheet_M1102[, c("ERTEK")] <- sapply(worksheet_M1102[, c("ERTEK")], as.numeric)
worksheet_M1102$ERTEK <-  round(worksheet_M1102$ERTEK, 0)

worksheet_M1102$OSZLOP_KOD <- 1



worksheet_M1103 <- read.xlsx(paste(getwd(), "/Excel_Files/", "KSH_M1103_2023.xlsx", sep = ""), sheet = "KSH_M1103_2023", startRow = 1, colNames = FALSE)
dim(worksheet_M1103)#2698 sor és 9 oszlop
worksheet_M1103 <- worksheet_M1103[, c(3, 5, 7)]
View(worksheet_M1103)
colnames(worksheet_M1103) <- c("M003", "SOR_KOD", "ERTEK")

worksheet_M1103$SOR_KOD <-  substr(worksheet_M1103$SOR_KOD, nchar(worksheet_M1103$SOR_KOD) - 2, nchar(worksheet_M1103$SOR_KOD))
worksheet_M1103[is.na(worksheet_M1103)] <- 0
worksheet_M1103[, c("ERTEK")] <- sapply(worksheet_M1103[, c("ERTEK")], as.numeric)
worksheet_M1103$ERTEK <-  round(worksheet_M1103$ERTEK, 0)

worksheet_M1103$OSZLOP_KOD <- 1

library("openxlsx")
library("RODBC")
channelOracle <- odbcDriverConnect(paste("DRIVER={Oracle in OraClient18Home1};DBQ=EMERALD.KSH.HU;UID=", Sys.getenv("userid"), ";PWD=", Sys.getenv("pwd")))


proc_filenames <- list.files(path = paste(getwd(), "/Excel_Files/PSZAF/", sep = ""))
for(k in 1:length(proc_filenames)){
  
  worksheet <- read.xlsx(paste(getwd(), "/Excel_Files/PSZAF/", proc_filenames[k], sep = ""), sheet = substr(proc_filenames[k], 1, nchar(proc_filenames[k]) - 5), startRow = 2, colNames = FALSE)
  (dim(worksheet))
  #worksheet <- worksheet[1:nrow(worksheet) - 1, ]
  worksheet <- worksheet[, c(3, 5, 6, 7)]
  colnames(worksheet) <- c("M003", "SOR_KOD", "OSZLOP_KOD", "ERTEK")
  worksheet[is.na(worksheet)] <- 0
  worksheet[, "ERTEK"] <- sapply(worksheet[, "ERTEK"], as.numeric)
  worksheet$ERTEK <-  round(worksheet$ERTEK, 0)
  
  #4. tábla
  sqlSave(channel = channelOracle, dat = worksheet, tablename = "PP23.TEMP_PSZAFUPDATE", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)
  print(k)
  
}

odbcClose(channelOracle)
View(worksheet)
