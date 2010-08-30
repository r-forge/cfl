ldc.disj<-
		function (...){
	s<-1
	n <- length(list(...))
	if (n > 1) {
		for (a in list(...)) { 
			b<-as.vector(a)
			if (any(b<0|b>1)) { 
				stop("Error...the value is not a value trust")
			}
			else {		
				var1<-1-a		
				s <- s * var1
			}
		}
		result1 <- (s)^(1/n)
		result<- 1-result1 
		return(result)
	}
	if (n == 1) {
		if (is.vector((...), mode = "any")) {
			value<-(...)		
			var1<-1-value
			var2<-prod(var1)
			var3<-(var2)^(1/length(value))
			var4<-1-var3
			return (var4)
		}
		if (!is.vector((...), mode = "any")) {
			value<-	(...)
			col<-ncol(value)
			row<-nrow(value)
			valor<-matrix(as.matrix(value), nrow=row, ncol=col, byrow=FALSE)
			var1<-1-valordim
			var2<-apply(var1,2,prod)
			var3<-(var2)^(1/row)
			var4<-1-var3
			return (var4)
		}
	}
}