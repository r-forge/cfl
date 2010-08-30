ldc.forall<-
		function (value){
	b<-as.vector(value)
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