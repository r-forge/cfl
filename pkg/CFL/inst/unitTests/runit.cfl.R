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
	checkException(ldc.conj(0,1,0,2))
	checkEquals(ldc.conj(0,1,0,1), 0)
	checkEquals(ldc.conj(c(0,1,0,1)), 0)
}
test.ldc.disy <- function() {
	checkException(ldc.disy(test.bad.vector,test.bad.matrix))
	checkException(ldc.disy(test.bad.matrix))
	checkException(ldc.disy(test.bad.vector))
	checkEquals(ldc.disy(test.good.matrix,test.good.vector), 0)
	checkEquals(ldc.disy(test.good.matrix), 0)
	checkEquals(ldc.disy(test.good.vector), 0)
}
test.ldc.exist <- function() {
	checkException(ldc.exist(test.bad.vector))
	checkException(ldc.exist(test.bad.matrix))
	checkEquals(ldc.exist(test.good.vector), 0)
	checkEquals(ldc.exist(test.good.matrix), 0)
}
test.ldc.forall <- function() {
	checkException(ldc.forall(test.bad.vector))
	checkException(ldc.forall(test.bad.matrix))
	checkEquals(ldc.forall(test.good.vector), 0)
	checkEquals(ldc.forall(test.good.matrix), 0)
}
