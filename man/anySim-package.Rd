% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anySim.R
\docType{package}
\name{anySim-package}
\alias{anySim-package}
\title{anySim: Stochastic Simulation of Processes with any Marginal Distribution and Correlation Structure}
\description{
anySim is an R package for the stochastic simulation of processes with any marginal distribution and dependence structure. Currently, the package provides models for the simulation of univariate stationary and cyclostationary processes, exhibiting continuous, discrete and mixed-type marginal distributions as well as any valid (i.e., positive definite) short-range or long-range autocorrelation structure. Furthermore, it implements a multivariate stationary stochastic model with similar capabilities, preserving also the lag-0 cross-correlation coefficients among the processes. The package can be used for the generation of synthetic time series (e.g., rainfall, runoff, temperature, wind speed etc.) with the desired marginal and stochastic properties.
}
\details{
The methodology is based on the concept of Nataf’s joint distribution model (Nataf, 1962; Liu and Der Kiureghian 1986) according to which the joint distribution of random variables with any target arbitrary marginal distributions can be obtained by mapping an auxiliary multivariate standard Gaussian distribution via the inverse cumulative distribution functions (ICDFs). It exploits the link that exists between correlation coefficients in the Gaussian and the target domain, reproducing also the target correlations. Moving to stochastic process simulation, anySim employs a similar concept (for more details see, Kossieris et al., 2019; Tsoukalas et al., 2017, 2018a, 2018b, 2018c, 2019; Tsoukalas 2019) that is based on the mapping (through the ICDF) of an auxiliary Gaussian process (Gp) through the ICDF in order to establish processes with the target marginal distribution and correlation structure. The package comprises the following stochastic simulation models:
\itemize{

\item Autoregressive To Anything model of order p - ARTA(p): This model uses an appropriately parameterised univariate AR(p) to simulate an auxiliary Gp to establish the target correlation structure. It is noted that a similar low-order (p=1) model has been proposed by Cario and Nelson (1996).

\item Sum of n Autoregressive To Anything models of order 1 - nARTA(1): This model uses the sum of n, appropriately parameterised, univariate AR(1) models to simulate an auxiliary Gp to establish the target correlation structure (see, Papalexiou, 2018).

\item Symmetric Moving Average To Anything - SMARTA(q): This model uses an appropriately parameterised SMA(q) model to simulate an auxiliary Gp to establish the target correlation structure. In the final step, the Gp realisation is mapped to the actual domain through the ICDF of the target distribution (Tsoukalas et al., 2018b, 2019; Tsoukalas, 2019).

\item Stochastic Periodic Autoregressive To Anything model of order 1 - SPARTA: This model uses an appropriately parameterised univariate PAR(1) model to simulate a cyclostationary auxiliary Gp to establish the target season-to-season correlation structure (Tsoukalas et al., 2017, 2018a, 2019; Tsoukalas, 2019).

}
}
\references{
\itemize{

\item Cario, M., and Nelson, B., 1996. Autoregressive to anything: Time-series input processes
for simulation. Operations Research Letters, 19(2), 51–58. \href{https://doi.org/10.1016/0167-6377(96)00017-X}{(link)}

\item Kossieris, P., Tsoukalas, I., Makropoulos, C., and Savic D., 2019. Simulating marginal and
dependence behaviour of water demand processes at any fine time scale, Water, 11(5), 885.\href{https://doi.org/10.3390/w11050885}{(link)}

\item Liu, P., and Der Kiureghian, A., 1986. Multivariate distribution models with prescribed
marginals and covariances. Probabilistic Engineering Mechanics, 1(2), 105–112.
\href{https://doi.org/10.1016/0266-8920(86)90033-0}{(link)}

\item Nataf, A., 1962. Statistique mathematique-determination des distributions de probabilites dont les marges sont donnees.
Comptes Rendus de l’Academie Des Sciences, 255(1), 42–43.

\item Papalexiou, S., 2018. Unified theory for stochastic modelling of hydroclimatic processes:
Preserving marginal distributions, correlation structures, and intermittency. Advances in
Water Resources. \href{https://doi.org/10.1016/j.advwatres.2018.02.013}{(link)}

\item Tsoukalas, I., Efstratiadis, A., and Makropoulos, C., 2017. Stochastic simulation of periodic
processes with arbitrary marginal distributions. 15th International Conference on Environmental
Science and Technology (CEST2017), Rhodes, Greece.
\href{http://www.itia.ntua.gr/en/getfile/1731/1/documents/cest2017_00797_oral_paper_V2.pdf}{(link)}

\item Tsoukalas, I., Efstratiadis, A., and Makropoulos, C., 2018a. Stochastic periodic
autoregressive to anything (SPARTA): Modeling and simulation of cyclostationary processes with
arbitrary marginal distributions. Water Resources Research 54 (1), 161-185.
\href{https://doi.org/10.1002/2017WR021394}{(link)}

\item Tsoukalas, I., Makropoulos, C., and Koutsoyiannis, D., 2018b. Simulation of Stochastic
Processes Exhibiting Any‐Range Dependence and Arbitrary Marginal Distributions.
Water Resources Research 54(11), 9484-9513. \href{https://doi.org/10.1029/2017WR022462}{(link)}

\item Tsoukalas, I., Papalexiou, S.M, Efstratiadis, A., and Makropoulos, C., 2018c. A cautionary
note on the reproduction of dependencies through linear stochastic models with non-Gaussian white
noise. Water 10 (6), 771. \href{https://doi.org/10.3390/w10060771}{(link)}

\item Tsoukalas, I., Efstratiadis, A., and Makropoulos, C., 2019. Building a puzzle to solve a
riddle: A multi-scale disaggregation approach for multivariate stochastic processes with any
marginal distribution and correlation structure. Journal of hydrology.
\href{https://doi.org/10.1016/j.jhydrol.2019.05.017}{(link)}.

\item Tsoukalas, I., 2019. Modelling and simulation of non-Gaussian stochastic processes for
optimization of water-systems under uncertainty, PhD thesis, 339 pages, National Technical
University of Athens, December 2018. \href{http://dspace.lib.ntua.gr/handle/123456789/48425),
https://www.itia.ntua.gr/en/docinfo/1933/}{(link)}

}
}
\author{
\strong{Developed by:} Ioannis Tsoukalas \email{itsoukal@mail.ntua.gr} \cr
Panagiotis Kossieris \email{pkossier@cental.ntua.gr}
}
