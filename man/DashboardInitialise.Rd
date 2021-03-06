% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dashboard.R
\name{DashboardInitialise}
\alias{DashboardInitialise}
\title{Initialise the automated analysis}
\usage{
DashboardInitialise(STUB = "/", SRC = "src", NAME = NULL,
  changeWorkingDirToTmp = TRUE)
}
\arguments{
\item{STUB}{The directory containing the `data_raw`, `data_clean`, `data_app`, and `results` folders}

\item{SRC}{The directory inside `STUB` containing `ANALYSIS/RunProcess.R`}

\item{NAME}{The name of the automated analysis}

\item{changeWorkingDirToTmp}{Do you want to change the working directory to a temporary directory?}
}
\description{
If folders are setup according to the
dashboard philosophy, then this function
locates the computer's name in `/tmp/computer`
and sets PROJ as appropriate
}
