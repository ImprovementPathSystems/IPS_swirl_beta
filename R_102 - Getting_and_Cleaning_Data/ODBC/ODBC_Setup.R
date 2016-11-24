command <- paste(path_to_course,"ODBC_Setup.pdf",sep='/') 
command <- gsub("/","\\\\",command) 
system("cmd.exe", input = paste("\"",command,"\"",sep=""))


