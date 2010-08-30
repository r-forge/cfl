\name{sigmoidal}
\alias{sigmoidal}
\title{
sigmoidal membership functions
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
\arguments{
  \item{x}{numeric, complex or vectors with values to fuzzificated.}
\item{ganma}{Acceptable Value. Value in the range 0 and 1.} 
\item{beta}{Value almost unacceptable. Value in the range 0 and 1.}
}
\details{
The sigmoidal membership functions is used to fuzzificated values. The formula is:
\deqn{S(x,\alpha,\gamma)=\frac{1}{1+e^{-\alpha(x-\gamma)}}}{S(x,\alpha,\gamma)=1/(1+e^(-\alpha(x-\gamma)))}
where:
\deqn{\alpha=\frac{ln(0.9)-ln(0.1)}{\gamma-\beta}}{\alpha=(ln(0.9)-ln(0.1))(\gamma-\beta)}
}
\value{
     The sigmoidal membership functions return a value in the range {[}0...1{]}. 
}
\references{
Ceruto Cordov\'{e}s, T.R.S., Alejandro \& Esp\'{i}n Andrade, Rafael (2009)
Descubrimiento de predicados a trav\'{e}s de la b\'{u}squeda metaheur\'{i}stica. 
}
\author{
Pablo Michel Marin Ortega, Kornelius Rohmeyer
}

\examples{
sigmoidal(20,0.5,0.1) 
}

