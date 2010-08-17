\name{ldc.conj}
\alias{ldc.conj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ldc.conj(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
