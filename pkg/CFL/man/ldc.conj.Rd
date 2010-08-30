\name{ldc.conj}
\alias{ldc.conj}
\title{
ldc.conj
}
\description{
It Calculates the conjuction operator based on compensatory fuzzy logic.
}
\usage{
ldc.conj(...)
}
\arguments{
  \item{...}{
numeric, complex or logical vectors, in the range 0 to 1.
}
}
\details{
The conjunction symbolizes the inclusive use of \dQuote{\emph{and}}
in natural language. The mathematical formula is: \eqn{\wedge_{x\in U}p(x)=\sqrt[n]{\sqcap_{x\in U}p(x)}}{TODO}.
\eqn{p\wedge q}{p and q} is true if and only if both p and q are true. 
}
\value{
     The ldc.conj operator return a value of trust [0,1]. If values of \code{...} are outside of the range [0,1] an error will be raised.
      Otherwise it is a length-one numeric or complex vector.
}
\references{
Espin, R., Fern\'{a}ndez, E., Mazcorro, G., Marx-G\'{o}mez J., M.I. Lecich:
Compensatory Logic: A fuzzy normative model for decision making. Investigaci\'{o}n
Operativa. Universidad de la Habana.Vol. 27, 2, pp. 188-197 (2006).

Espin, R., Mazcorro, G., Fen\'{a}ndez, E.: Consideraciones sobre el car\'{a}cter
normativo de la l\'{o}gica difusa compensatoria. Infraestructura de Datos
Espaciales en Iberoam\'{e}rica y el Caribe. IDICT. Cuba (2007).

Espin, R., Fern\'{a}ndez, E.: La L\'{o}gica Difusa Compensatoria: Una Plataforma
para el Razonamiento y la Representaci\'{o}n del Conocimiento en un Ambiente
de Decisi\'{o}n Multicriterio. In: An\'{a}lisis Multicriterio para la Toma
de Decisiones: M\'{e}todos y Aplicaciones. Coedici\'{o}n: editorial Plaza
y Valdes/editorial Universidad de Occidente (2009).
}
\author{
Pablo Michel Marin Ortega, Kornelius Rohmeyer
}
\examples{
 ldc.conj(0,1,0,1) 

}