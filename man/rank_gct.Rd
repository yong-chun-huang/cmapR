% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R, R/utils.R
\name{rank.gct}
\alias{rank.gct}
\alias{rank_gct}
\alias{rank_gct,GCT-method}
\title{Convert a GCT object's matrix to ranks}
\usage{
rank.gct(...)

rank_gct(g, dim = "col", decreasing = TRUE)

\S4method{rank_gct}{GCT}(g, dim = "col", decreasing = TRUE)
}
\arguments{
\item{g}{the \code{GCT} object to rank}

\item{dim}{the dimension along which to rank
(row or column)}

\item{decreasing}{boolean indicating whether
higher values should get lower ranks}
}
\value{
a modified version of \code{g}, with the
  values in the matrix converted to ranks
}
\description{
Convert a GCT object's matrix to ranks
}
\examples{
(ranked <- rank_gct(ds, dim="column"))
# scatter rank vs. score for a few columns
# use \code{get_gct_matrix} function to access matrix of GCT objects
mat <- get_gct_matrix(ds)
mat_ranked <- get_gct_matrix(ranked)
plot(mat[, 1:3], mat_ranked[, 1:3],
  xlab="score", ylab="rank")

}
\seealso{
Other GCT utilities: 
\code{\link{annotate.gct}()},
\code{\link{melt.gct}()},
\code{\link{merge.gct}()},
\code{\link{subset.gct}()}
}
\concept{GCT utilities}
