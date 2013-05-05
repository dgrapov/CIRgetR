\name{CIRgetR}
\alias{CIRgetR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
CIRgetR(id, to = c("pubchem_sid"), return.all = TRUE, progress = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{id}{
character, matrix or data.frame containing InchIKey, InchI code or smiles (see Details)
}
  \item{to}{
value to translate "to""
}
  \item{return.all}{
limit results to single (first) output for each id
}
  \item{progress}{
show progress for translations
}
}
\details{
This is an interface to the Chemical Identifier Resolver (CIR, http://cactus.nci.nih.gov/chemical/structure).
}
\value{
\item{comp1 }{data.frame containing the results of the translation}
}
\references{
https://github.com/dgrapov/CIRgetR
}
\author{
Dmitry Grapov
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#test
id<- c("C[N+](C)(C)[O-]", "CC(=O)Oc1ccccc1C(=O)O")      
opts<-c("smiles", "names", "iupac_name", "cas", "inchi", "stdinchi", "inchikey", "stdinchikey",
        "ficts", "ficus", "uuuuu", "image", "file", "mw", "monoisotopic_mass","chemspider_id",
        "pubchem_sid", "chemnavigator_sid", "formula", "chemnavigator_sid")     

translations<-sapply(1:length(opts), function(i)
    {
        CIRgetR(id=id,to=opts[i],return.all=FALSE)
    })
colnames(translations)<-opts    

#image test
CIRgetR(id,to="image")
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
