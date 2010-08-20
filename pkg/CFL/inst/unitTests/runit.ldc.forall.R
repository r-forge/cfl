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

test.ldc.forall <- function() {
	checkException(ldc.forall(test.bad.vector))
	checkException(ldc.forall(test.bad.matrix))
	checkEquals(ldc.forall(test.good.vector), 0)
	checkEquals(ldc.forall(test.good.matrix), 0)
}