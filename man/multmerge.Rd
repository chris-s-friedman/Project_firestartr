\name{multmerge}
\alias{multmerge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Merge Multiple CSV Files
%%  ~~function to do ... ~~
}
\description{Combines multiple csv files into one data frame
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
multmerge(mypath, fileEncoding = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mypath}{the path where the csv files live. NOTE: only csv files can be in the path called
%%     ~~Describe \code{mypath} here~~
}
  \item{fileEncoding}{This follows the same rules as the fileEncoding argument in read.csv. Added in because this was needed for a project}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Tony Cookson's post, available at http://novicemetrics.blogspot.com/2011/04/merging-multiple-data-files-into-one.html
%% ~put references to the literature/web site here ~
}
\author{Chris Friedman
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
multmerge("./data/")
  this will return a data frame of all the csv files in the path in one frame.

## The function is currently defined as
function (mypath, fileEncoding)
{
  filenames=list.files(path=mypath, full.names=TRUE)
  datalist = lapply(filenames,
                    function(x){read.csv(file=x,
                                         header=T,
                                         fileEncoding = fileEncoding)})
  Reduce(function(x,y) {rbind(x,y)}, datalist)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
