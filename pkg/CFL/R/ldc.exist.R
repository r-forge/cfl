ldc.exist<-
		function (value){
	b<-as.vector(value)
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
			var1<-1-valor
			var2<-apply(var1,2,prod)
			var3<-(var2)^(1/row)
			var4<-1-var3
			return (var4)
		}
	}
}