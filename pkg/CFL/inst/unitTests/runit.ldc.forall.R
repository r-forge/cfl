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

test.ldc.forall <- function() {
	checkException(ldc.forall(test.bad.vector))
	checkException(ldc.forall(test.bad.matrix))
	checkEquals(ldc.forall(test.good.vector), 0)
	checkTrue(all(0 < ldc.forall(test.good.matrix)))
	checkTrue(all(ldc.forall(test.good.matrix) < 1))
}