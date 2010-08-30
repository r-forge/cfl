\name{sigmoidal}
\alias{sigmoidal}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
sigmoidal membership functions%%  ~~function to do ... ~~
}
\description{
By theoretical considerations in (Dubois and Prade, 1985), it is recommend
the use of sigmoidal membership functions for increasing or decreasing
functions. The parameters of these functions are determined by setting
three values. The first value is the variable that need fuzzification, The second is the value at which it is considered that
the statement in the predicate is true (gamma). The third is the
value for which the data makes almost unacceptable the corresponding
statement (beta).
}
\usage{
sigmoidal(x,ganma, beta)


}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
\begin{itemize}
\item x: numeric, complex or vectors with values to fuzzificated.
\item ganma: Acceptable Value. Value in the range 0 and 1. 
\item beta: Value almost unacceptable. Value in the range 0 and 1.
\end{itemize}
}
}
\details{
The sigmoidal membership functions is used to fuzzificated values. The formula is:
S(x,$\alpha,\gamma$)=$\frac{1}{1+e^{-\alpha(x-\gamma)}}$
where:
$\alpha=\frac{ln(0.9)-ln(0.1)}{\gamma-\beta}$
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
     The sigmoidal membership functions return a value in the range {[}0...1{]}. 
}
\references{
%% ~put references to the literature/web site here ~
Ceruto Cordov\'{e}s, T.R.S., Alejandro \& Esp\'{i}n Andrade, Rafael (2009)
Descubrimiento de predicados a trav\'{e}s de la b\'{u}squeda metaheur\'{i}stica. 
}
\author{
Pablo Michel Marin Ortega, Kornelius Rohmeyer
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
> sigmoidal(20,0.5,0.1) 


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
