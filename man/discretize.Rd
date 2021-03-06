% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discretize.R
\encoding{UTF-8}
\name{discretize}
\alias{discretize}
\title{Discretizes RIA image to a given number of bins}
\usage{
discretize(RIA_data_in, bins_in = 8, equal_prob = FALSE,
  use_orig = TRUE, write_orig = FALSE, verbose_in = TRUE)
}
\arguments{
\item{RIA_data_in}{\emph{RIA_image}.}

\item{bins_in}{integer vector, number of bins specified.}

\item{equal_prob}{logical, indicating to cut data into bins with equal relative frequencies.
If FALSE, then equal interval bins will be used.}

\item{use_orig}{logical, indicating to use image present in \emph{RIA_data$orig}.
If FALSE, the modified image will be used stored in \emph{RIA_data$modif}.}

\item{write_orig}{logical, indicating to write cropped image  to \emph{RIA_data$orig}.
If FALSE, the modified image will be used stored in \emph{RIA_data$modif}.}

\item{verbose_in}{logical, indicating whether to print detailed information.
Most prints can also be suppressed using the \code{\link{suppressMessages}} function.}
}
\value{
\emph{RIA_image} with values discretized to bin values.
}
\description{
Discretizes \emph{RIA_image} into \emph{bins_in} number of bins.
The \emph{equal_prob} parameter is used to indicate whether to create bins containing
the same number of values. If FALSE then equal sized bins will be created.
discretized images will be saved into the \emph{$data$modif} slot of \emph{RIA_image}
as well as the \emph{discretized} slot of \emph{RIA_image}.
The name will be automatically created based on the type of dichotomization
(ep: equal probability; es: equal size) and the number of bins specified,
for example: \emph{$dicotomized$es_8} will store the discretized image after
equal sized dichotomization into 8 bins. This way many different discretized images using
different bin numbers can be saved to the same object for further analysis.
The \emph{RIA_log} will be updated with cut points.
}
\examples{
\dontrun{
#Discretize into 8 bins, each containing equal number of elements
RIA_image <- discretize(RIA_image, bins_in = 8, equal_prob = TRUE,
 use_orig = TRUE, write_orig = FALSE)

#Discretize into 6 bins, each with the same width
RIA_image <- discretize(RIA_image, bins_in = 6, equal_prob = FALSE,
 use_orig = TRUE, write_orig = FALSE)

#Discretize into 2,4,8,16,32 bins, each containing equal number of elements
RIA_image <- discretize(RIA_image, bins_in = 2^(1:5), equal_prob = FALSE,
 use_orig = TRUE, write_orig = FALSE)
 
#D
}

}
\references{
Márton KOLOSSVÁRY et al.
Radiomic Features Are Superior to Conventional Quantitative Computed Tomographic
Metrics to Identify Coronary Plaques With Napkin-Ring Sign
Circulation: Cardiovascular Imaging (2017).
DOI: 10.1161/circimaging.117.006843
\url{https://www.ncbi.nlm.nih.gov/pubmed/29233836}

Márton KOLOSSVÁRY et al.
Cardiac Computed Tomography Radiomics: A Comprehensive Review on Radiomic Techniques.
Journal of Thoracic Imaging (2018).
DOI: 10.1097/RTI.0000000000000268
\url{https://www.ncbi.nlm.nih.gov/pubmed/28346329}
}
