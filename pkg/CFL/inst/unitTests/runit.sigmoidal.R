x<-c(1,2,3,4,5)
ganma.good<-c(0)
ganma.bad<-c(2)
beta.good<-c(1)
beta.bad<-(2)
test.sigmoidal <- function() {
	checkException(sigmoidal(x,ganma.bad, beta.good))
	checkException(sigmoidal(x,ganma.good, beta.bad))
	checkTrue(all(0 < sigmoidal(x,ganma.good,beta.good)))
	checkTrue(all(sigmoidal(x,ganma.good,beta.good) < 1))
	}