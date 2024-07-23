library("RODBC")
channelOracle <- odbcDriverConnect(paste("DRIVER={Oracle in OraClient18Home1};DBQ=EMERALD.KSH.HU;UID=", Sys.getenv("userid"), ";PWD=", Sys.getenv("pwd")))

#1. tábla
sqlSave(channel = channelOracle, dat = worksheet_M1101[, c("M003", "SOR_KOD", "OSZLOP_KOD", "ERTEK")], tablename = "PP23.PP23_2023M1101_V00", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)



#2. tábla
sqlSave(channel = channelOracle, dat = worksheet_M1102[, c("M003", "SOR_KOD", "OSZLOP_KOD", "ERTEK")], tablename = "PP23.PP23_2023M1102_V00", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)



#3. tábla
sqlSave(channel = channelOracle, dat = worksheet_M1103[, c("M003", "SOR_KOD", "OSZLOP_KOD", "ERTEK")], tablename = "PP23.PP23_2023M1103_V00", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)


odbcClose(channelOracle)
