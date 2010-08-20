sigmoidal<-
		function(x,ganma,beta) {
	alfa=(log(0.9,base=exp(1))-log(0.1,base=exp(1))/(ganma-beta))
	var<-alfa*(x-ganma)*(-1)
	s<-1/(1+exp(var))
	return (s)
}