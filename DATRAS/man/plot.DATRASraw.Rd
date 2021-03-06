\name{plot.DATRASraw}
\alias{plot.DATRASraw}
\alias{points.DATRASraw}
\title{Plot map with haul positions.}
\usage{
  \method{plot}{DATRASraw} (x, add = FALSE, pch = 16,
    plot.squares = !add, plot.map = !add,
    plot.points = TRUE, plot.response = TRUE, xlim = NULL,
    ylim = NULL, ...)

  \method{points}{DATRASraw} (x, ...)
}
\arguments{
  \item{x}{DATRASraw object.}

  \item{add}{Plot on top of existing plot?}

  \item{pch}{Point type of positions.}

  \item{plot.squares}{Add ICES squares?}

  \item{plot.map}{Add a map?}

  \item{plot.points}{Plot haul positions?}

  \item{plot.response}{Plot frequencies of response if
  present?}

  \item{xlim}{Longitude range of plot.}

  \item{ylim}{Latitude range of plot.}

  \item{...}{Controlling plot of positions.}
}
\description{
  Plot map with haul positions and ICES squares. If a
  response variable is present also plot frequencies within
  each square.

  Positions can be added to existing plot.
}
\examples{
\dontshow{
file1 <- system.file("exchange","Exchange1.zip",package="DATRAS")
}
x <- readExchange(file1)
y <- subset(x,lon>9,LngtCm<60)
plot(y,col="red")
##' Add response variable
y <- addSpectrum(y)
plot(y,col="red")
}

