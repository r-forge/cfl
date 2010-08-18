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

ldc.disy<-
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

sigmoidal<-
		function(x,ganma,beta) {
	alfa=(log(0.9,base=exp(1))-log(0.1,base=exp(1))/(ganma-beta))
	var<-alfa*(x-ganma)*(-1)
	s<-1/(1+exp(var))
	return (s)
}
ldc.exist<-
		function (value){
	b<-as.vector(a)
	if (any(b<0|b>1)) { 
		stop("Error...the value is not a value trust")
	}
	else {	
		if (is.vector(value, mode = "any")) {
			var1<-1-value
			var2<-prod(var1)
			var3<-(var2)^(1/length(value))
			var4<-1-var3
			return (var4)
		}
		else{
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

ldc.forall<-
		function (value){
	b<-as.vector(a)
	if (any(b<0|b>1)) { 
		stop("Error...the value is not a value trust")
	}
	else {	
		if (is.vector(value, mode = "any")) {
			var1<-prod(value)
			var2<-(var1)^(1/length(value))
			return (var2)
			
		}
		else{
			col<-ncol(value)
			row<-nrow(value)
			valor<-matrix(as.matrix(value), nrow=row, ncol=col, byrow=FALSE)
			var1<-apply(valor,2,prod)
			var2<-(var1)^(1/row)
			return (var2)
		}
	}
}