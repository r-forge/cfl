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

test.ldc.conj <- function() {
	checkException(ldc.conj(test.bad.vector,test.bad.matrix))
	checkException(ldc.conj(test.bad.matrix))
	checkException(ldc.conj(test.bad.vector))
	checkEquals(ldc.conj(test.good.matrix,test.good.vector), 0)
	checkEquals(ldc.conj(test.good.matrix), 0)
	checkEquals(ldc.conj(test.good.vector), 0)
}