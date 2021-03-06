% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plate_map.R
\name{plate_map}
\alias{plate_map}
\title{Plate map.}
\usage{
plate_map(df, alpha_value, colour_value, plate_size = 96, dot_size = 10)
}
\arguments{
\item{row_range}{Vector of letters to generate values for (e.g LETTERS[1:3])}

\item{column_range}{Vector of numbers to generate values for (e.g. 1:3)}

\item{max_conc}{Maximum concentration of dilution series for values.}

\item{well_contents}{String for label of what is in the well (e.g. "Sample1")}

\item{dil_factor}{Dilution factor for generating dilution series. Default = 0.5.}

\item{constant_concentration}{TRUE/FALSE. TRUE = only 1 concentration for all values. FALSE = generating dilution series.}

\item{direction}{String either "horizontal" (default) or "vertical". "horizontal" makes dilution series go across numbered colums, "vertical" makes diultion series go down the letterd rows.}
}
\description{
Generates visual plate map from inputted plate properties.
}
\examples{
# Requires ggplot2

df <- create_plate_properties(LETTERS[1:8], 1:12, max_conc = 1000, well_contents = "SampleA")
head(df)
plate_map(df = df, alpha_value = sample_con, colour_value = well_contents)
}
\keyword{concentrations}
\keyword{dilution,}
\keyword{plate,}
