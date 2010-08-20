load.bad.matrix <- function() {
	read.table("indicadores.txt")
}

load.good.matrix <- function() {
	read.table("indicadores1.txt")
}
test.bad.matrix <-load.bad.matrix()
test.good.matrix <-load.good.matrix()
test.bad.vector<-c(0.12,0.34,5)
test.good.vector<-c(0,1,1)

test.ldc.disy <- function() {
	checkException(ldc.disy(test.bad.vector,test.bad.matrix))
	checkException(ldc.disy(test.bad.matrix))
	checkException(ldc.disy(test.bad.vector))
	checkEquals(ldc.disy(test.good.matrix,test.good.vector), 0)
	checkEquals(ldc.disy(test.good.matrix), 0)
	checkEquals(ldc.disy(test.good.vector), 0)
}