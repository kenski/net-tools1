utils:::menuInstallLocal()

garbage<-lapply(c("maps","sp","rgdal","maptools","tcltk","fgui","deldir","gpclib","sqldf","tkrplot","plotrix","Hmisc","ellipse"),function(x) {
		if(!x %in% installed.packages()[,1]) {install.packages(x,repos="http://www.ibiblio.org/pub/languages/R/CRAN")}
	});

makebat<-function(fname) {
	thebat<-file(paste("c:/documents and settings/",Sys.info()[grep("user",names(Sys.info()))],"/desktop/",fname,".bat",sep=""),open="w");
	cat(paste(Sys.which("r.exe")," CMD BATCH ",.Library,"/netassess/run",fname,".r",sep=""),file=thebat);
	close(thebat);
}

makebat("rembias");
makebat("area.served");
makebat("newsites");
makebat("cormat");

q(save="no");
