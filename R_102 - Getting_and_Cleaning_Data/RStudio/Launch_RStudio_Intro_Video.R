command <- paste(path_to_course,"RStudio_Intro.mp4",sep='/') 
command <- gsub("/","\\\\",command) 
system("cmd.exe", input = paste("\"",command,"\"",sep=""))