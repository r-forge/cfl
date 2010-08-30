load.bad.matrix <- function() {
	structure(list(valor_real = c(0.95, 50, 157, 500), valor_aceptable = c(0.85, 
							80, 101, 600), valor_optimo = c(0.98, 100, 120, 630)), .Names = c("valor_real", 
					"valor_aceptable", "valor_optimo"), class = "data.frame", row.names = c("ind-01", 
					"ind-02", "ind-03", "ind-04"))	
}

load.good.matrix <- function() {
	structure(list(valor_real = c(0.95, 0.3, 0.5, 0.34), valor_aceptable = c(0.85, 
							0.8, 0.101, 0.6), valor_optimo = c(0.98, 0.1, 0.12, 0.63)), .Names = c("valor_real", 
					"valor_aceptable", "valor_optimo"), class = "data.frame", row.names = c("ind-01", 
					"ind-02", "ind-03", "ind-04"))
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
