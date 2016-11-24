command <- paste(path_to_course,"RODBC_Template.R",sep='/') 
command <- gsub("/","\\\\",command) 
system("cmd.exe", input = paste("\"",command,"\"",sep=""))


