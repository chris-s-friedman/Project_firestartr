\name{InitializeR}
\alias{InitializeR}
\title{Initialize a project directory by adding useful folder structure.
}
\description{ The function adds folders to the specified directory, namely a doc folder, an R folder, an output folder and a figs folder.
}
\usage{
InitializeR(projectpath = NULL)
}
\arguments{
  \item{projectpath}{
    Where the new folders will be placed. defaults to the working directory.
  }
}
\author{
Chris Friedman
}

\examples{
initializeR("somedirectory/somesubdirectory")

## The function is currently defined as
function (projectpath = NULL)
{
    dir.create(paste(projectpath, "R", sep = "/"))
    dir.create(paste(projectpath, "figs", sep = "/"))
    dir.create(paste(projectpath, "output", sep = "/"))
    dir.create(paste(projectpath, "docs", sep = "/"))
  }
}
