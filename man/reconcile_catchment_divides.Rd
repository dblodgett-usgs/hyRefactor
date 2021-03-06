% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reconcile.R
\name{reconcile_catchment_divides}
\alias{reconcile_catchment_divides}
\title{Reconcile Catchment Divides}
\usage{
reconcile_catchment_divides(
  catchment,
  fline_ref,
  fline_rec,
  fdr = NULL,
  fac = NULL,
  para = 2,
  cache = NULL,
  min_area_m = 800,
  snap_distance_m = 100,
  simplify_tolerance_m = 40,
  vector_crs = NULL
)
}
\arguments{
\item{catchment}{sf data.frame NHDPlus Catchment or CatchmentSP layers for
included COMIDs}

\item{fline_ref}{sf data.frame flowlines as returned by
\code{\link{refactor_nhdplus}} and \code{\link{reconcile_collapsed_flowlines}}}

\item{fline_rec}{sf data.frame flowpaths as returned by
\code{\link{reconcile_collapsed_flowlines}}}

\item{fdr}{raster D8 flow direction}

\item{fac}{raster flow accumulation}

\item{para}{integer numer of cores to use for parallel execution}

\item{cache}{path .rda to cache incremental outputs}

\item{min_area_m}{minimum area in m^2 to filter out slivers (caution, use with care!!)}

\item{snap_distance_m}{distance in meters to snap raster generated geometry to polygon geometry}

\item{simplify_tolerance_m}{dTolerance in meters for simplification of grid-cell based polygons}

\item{vector_crs}{any object compatible with sf::st_crs. Used for vector-based calculations in case that 
raster projection is not suitable (e.g. lon/lat) -- must result in units of meters.}
}
\value{
Catchment divides that have been split and collapsed according to
input flowpaths
}
\description{
Reconciles catchment divides according to the output of
\code{\link{reconcile_collapsed_flowlines}} and \code{\link{refactor_nhdplus}}
}
\details{
Note that all inputs must be passed in the same projection.
}
\seealso{
The \code{\link{refactor_nhdplus}} function implements a complete
workflow using `reconcile_collapsed_flowlines()` and can be used in prep
for this function.
}
