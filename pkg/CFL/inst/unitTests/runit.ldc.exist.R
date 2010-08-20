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

test.ldc.exist <- function() {
	checkException(ldc.exist(test.bad.vector))
	checkException(ldc.exist(test.bad.matrix))
	checkEquals(ldc.exist(test.good.vector), 0)
	checkEquals(ldc.exist(test.good.matrix), 0)
}