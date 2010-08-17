test.ldc.conj <- function() {
	checkException(ldc.conj(0,1,0,2))
	checkEquals(ldc.conj(0,1,0,1), 0)
	checkEquals(ldc.conj(c(0,1,0,1)), 0)
}