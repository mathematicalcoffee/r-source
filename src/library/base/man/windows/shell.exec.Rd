% File src/library/base/man/windows/shell.exec.Rd
% Part of the R package, https://www.R-project.org
% Copyright 1995-2008 R Core Team
% Distributed under GPL 2 or later

\name{shell.exec}
\alias{shell.exec}
\title{Open a File or URL using Windows File Associations}
\usage{
shell.exec(file)
}
\arguments{
  \item{file}{file or URL to be opened.}
}
\description{
  Opens the specified file or URL using the application specified in the
  Windows file associations.
}
\details{
  The path in \code{file} is interpreted relative to the current working
  directory.

  \R versions 2.13.0 and earlier interpreted \code{file} relative to
  the \R home directory, so a complete path was usually needed.

  Encoded \samp{file://} URLs should be in the Windows standard form, e.g.
  \code{"file:///c:/path/to/file.txt"}.

}
\value{
  No value, but informative error messages will be given if the
  operation fails.
}
\author{B. D. Ripley and Duncan Murdoch}

\seealso{\code{\link{system}}, \code{\link{shell}}}

\examples{\dontrun{
## the space should not be encoded here
shell.exec("C:\\\\Program Files\\\\BreezeSys\\\\BreezeBrowser\\\\Breezebrowser.htm")
shell.exec("C:/Program Files/BreezeSys/BreezeBrowser/Breezebrowser.htm")
shell.exec("file:///C:/Program Files/BreezeSys/BreezeBrowser/Breezebrowser.htm")
}}

\keyword{utilities}
