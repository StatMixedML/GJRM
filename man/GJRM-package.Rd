\name{GJRM-package}
\alias{GJRM-package}
\docType{package}

\title{Generalised Joint Regression Modelling}

\description{

This package provides a function for fitting various generalised joint regression models with several types of covariate 
effects and distributions. Many modelling options are supported and all parameters of the joint distribution can be specified as 
flexible functions of covariates.

The orginal name of this package was \code{SemiParBIVProbit} which was designed 
to fit flexible bivariate binary response models. However, since then the package has expanded so much that its orginal name 
no longer gave a clue about all modelling options available. The new name should more closely reflect past, current and future developments.

The main fitting functions are listed below.

\code{gjrm()} which fits bivariate regression models with binary responses (useful for fitting bivariate binary models in the presence of 
(i) non-random sample selection or (ii) associated responses/endogeneity or (iii) partial observability), bivariate models with 
binary/discrete/continuous/survival margins in the presence of 
associated responses/endogeneity, bivariate sample selection models with continuous/discrete response, trivariate binary 
models (with and without double sample selection). This function essentially merges all previously available fitting functions, namely
\code{SemiParBIV()}, \code{SemiParTRIV()}, \code{copulaReg()} and \code{copulaSampleSel()}.

\code{gamlss()} fits flexible univariate regression models where the response can be 
binary (only the extreme value distribution is allowed for), continuous, discrete and survival. The 
purpose of this function was only to provide, in some cases, starting values 
for the above functions, but it has now been made available in the form of a proper function should the user wish to fit 
univariate models using the general estimation approach of this package.

We are currently working on several multivariate extensions.


}

\details{
\code{GJRM} provides functions for fitting general joint models in various situations. The estimation approach is
based on a very generic penalized maximum likelihood based framework, where any (parametric) distribution can in principle be employed,
and the smoothers (representing several types of covariate effects) are set up using penalised regression splines.
Several marginal and copula distributions are available and the 
numerical routine carries out function minimization using a trust region algorithm in combination with
an adaptation of an automatic multiple smoothing parameter estimation procedure for GAMs (see \code{mgcv} for more details on this last point). The smoothers 
supported by this package are those available in \code{mgcv}. 

Confidence intervals for smooth components and nonlinear functions of the model
parameters are derived using a Bayesian approach. P-values for testing 
individual smooth terms for equality to the zero function are also provided and based on the approach
implemented in \code{mgcv}. The usual plotting and summary functions are also available. Model/variable 
selection is also possible via the use of shrinakge smoothers and/or information criteria. 


}


\author{

Giampiero Marra (University College London, Department of Statistical Science) and Rosalba Radice (Birkbeck, University of London, Department of Economics, Mathematics and Statistics)

with contributions from Panagiota Filippou (specifically on the trivariate binary models).

Thanks to Bear Braumoeller (Department of Political Science, The Ohio State University) for suggesting the implementation of bivariate models with partial observability.

Thanks also to Carmen Cadarso and Francisco Gude for suggesting various modelling extensions and improvements, and for sharing their vision for joint modelling. 

Maintainer: Giampiero Marra \email{giampiero.marra@ucl.ac.uk}

Part funded by EPSRC: EP/J006742/1

}

\references{

Key references:

Filippou P., Marra G. and Radice R. (2017), Penalized Likelihood Estimation of a Trivariate Additive Probit Model. \emph{Biostatistics}, 18(3), 569-585.

Marra G. and Radice R. (2011), Estimation of a Semiparametric Recursive Bivariate Probit in the Presence of Endogeneity. \emph{Canadian Journal of Statistics}, 39(2), 259-279.

Marra G. and Radice R. (2013), A Penalized Likelihood Estimation Approach to Semiparametric Sample Selection Binary Response Modeling. \emph{Electronic Journal of Statistics}, 7, 1432-1455.

Marra G. and Radice R. (2013), Estimation of a Regression Spline Sample Selection Model. \emph{Computational Statistics and Data Analysis}, 61, 158-173.

Marra G., Radice R., Filippou P. (2017), Testing the Hypothesis of Exogeneity in Regression Spline Bivariate Probit Models. \emph{Communications in Statistics - Simulation and Computation}, 46(3), 2283-2298.

Marra G. and Radice R. (2017), Bivariate Copula Additive Models for Location, Scale and Shape. \emph{Computational Statistics and Data Analysis}, 112, 99-113.

Marra G., Radice R., Barnighausen T., Wood S.N. and McGovern M.E. (2017), A Simultaneous Equation Approach to Estimating HIV Prevalence with Non-Ignorable Missing Responses. \emph{Journal of the American Statistical Association}, 112(518), 484-496.

Marra G. and Wyszynski K. (2016), Semi-Parametric Copula Sample Selection Models for Count Responses. \emph{Computational Statistics and Data Analysis}, 104, 110-129.

Radice R., Marra G. and Wojtys M. (2016), Copula Regression Spline Models for Binary Outcomes. \emph{Statistics and Computing}, 26(5), 981-995. 

Wojtys M. and Marra G. (submitted). Copula-Based Generalized Additive Models with Non-Random Sample Selection.

}


\seealso{ \code{\link{gjrm}}, \code{\link{gamlss}} }


\keyword{endogeneity} 
\keyword{package}
\keyword{non-random sample selection} 
\keyword{partial observability} 
\keyword{copula} 
\keyword{penalised regression spline} 
\keyword{smooth} 
\keyword{regression}


