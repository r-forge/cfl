ldc.conj <-
		function(...) {
	s<-1
	n <- length(list(...))
	if (n > 1) {
		for (a in list(...)) { 
			b<-as.vector(a)
			if (any(b<0|b>1)) { 
				stop("Error...the value is not a value trust")
			}
			else {
				s <- s * a
			}
		}
		result <- (s)^(1/n)
		return(result)
	}
	if (n == 1) {
		b<-as.vector((...))
		if (any(b<0|b>1)) { 
			stop("Error...the value is not a value trust")
		}
		else {
			if (is.vector((...), mode = "any")) {
				value<-(...)
				var1<-prod(value)
				var2<-(var1)^(1/length(value))
				return (var2)
			}
			if (!is.vector((...), mode = "any")) {
				value<-(...)
				col<-ncol(value)
				row<-nrow(value)
				valor<-matrix(as.matrix(value), nrow=row, ncol=col, byrow=FALSE)
				var1<-apply(valor,2,prod)
				var2<-(var1)^(1/row)
				return (var2)
			}
		}
	}
}









































