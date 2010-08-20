sigmoidal<-
		function(x,ganma,beta) {
	if (any(ganma<0|ganma>1)) { 
		stop("Error...the value is not among 0 and 1")
	}
	if (any(beta<0|beta>1)) { 
		stop("Error...the value is not a among 0 and 1")
	}
	alfa=(log(0.9,base=exp(1))-log(0.1,base=exp(1))/(ganma-beta))
	var<-alfa*(x-ganma)*(-1)
	s<-1/(1+exp(var))
	return (s)
}