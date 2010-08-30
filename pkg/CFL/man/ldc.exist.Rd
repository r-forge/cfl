\name{ldc.exist}
\alias{ldc.exist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ldc.exist%%  ~~function to do ... ~~
}
\description{
It Calculates the exist operator based on compensatory fuzzy logic.
}
\usage{
ldc.exist(...)
ldc.exist(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
matrix or logical vectors, with the values in the range 0 to 1.
}
}
\details{
In compensatory fuzzy logic the equivalence is defined by p$\leftrightarrow$q = (p$\rightarrow$q)
$\wedge$(q$\rightarrow$ p) and the universal and existential quantifiers
over X are defined by:

$\forall x$ p(x) = $\underset{x\epsilon X}{\wedge}(p(x))$

$\exists x$ p(x) = $\underset{x\epsilon X}{\vee}(p(x))$

These definitions convey the virtues and defects of the conjunction
and disjunction connectives.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
     The ldc.exist operator return a value of trust {[}0...1{]}. If values of '...' are outside of the range {[}0...1{]} the
     result will be message 'Error...the value is not a value trust'.  Otherwise it is a length-one
     numeric or vector.
}
\references{
%% ~put references to the literature/web site here ~
\begin{enumerate}
\item Espin, R., Fern\'{a}ndez, E., Mazcorro, G., Marx-G\'{o}mez J., M.I. Lecich:
Compensatory Logic: A fuzzy normative model for decision making. Investigaci\'{o}n
Operativa. Universidad de la Habana.Vol. 27, 2, pp. 188-197 (2006).
\item Espin, R., Mazcorro, G., Fen\'{a}ndez, E.: Consideraciones sobre el car\'{a}cter
normativo de la l\'{o}gica difusa compensatoria. Infraestructura de Datos
Espaciales en Iberoam\'{e}rica y el Caribe. IDICT. Cuba (2007).
\item Espin, R., Fern\'{a}ndez, E.: La L\'{o}gica Difusa Compensatoria: Una Plataforma
para el Razonamiento y la Representaci\'{o}n del Conocimiento en un Ambiente
de Decisi\'{o}n Multicriterio. In: An\'{a}lisis Multicriterio para la Toma
de Decisiones: M\'{e}todos y Aplicaciones. Coedici\'{o}n: editorial Plaza
y Valdes/editorial Universidad de Occidente (2009).
\end{enumerate}
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
> ldc.exist(0,1,0,1) 
{[}1{]} 0

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ exist }
\keyword{ Compensatory Fuzzy Logic }% __ONLY ONE__ keyword per line
