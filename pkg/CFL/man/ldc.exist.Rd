\name{ldc.exist}
\alias{ldc.exist}
\title{
ldc.exist
}
\description{
It Calculates the exist operator based on compensatory fuzzy logic.
}
\usage{
ldc.exist(value)
}
\arguments{
  \item{value}{
numeric, matrix or vectors, in the range 0 to 1.
}
}
\details{
In compensatory fuzzy logic the equivalence is defined by 
\eqn{p\leftrightarrow q = (p\rightarrow q)\wedge(q\rightarrow p)}{p<=>q = (p=>q) and (q=>p)}
 and the universal and existential quantifiers
over X are defined by:

\deqn{\forall x p(x) = \wedge_{x\in X}(p(x))}{TODO}

\deqn{\exists x p(x) = \vee_{x\in X}(p(x))}{TODO}

These definitions convey the virtues and defects of the conjunction
and disjunction connectives.
}
\value{
     The ldc.exist operator return a value of trust {[}0...1{]}. If values of '...' are outside of the range {[}0...1{]} the
     result will be message 'Error...the value is not a value trust'.  Otherwise it is a length-one
     numeric or vector.
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
ldc.exist(c(0,1,0,1)) 

}
