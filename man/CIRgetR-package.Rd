\name{CIRgetR-package}
\alias{CIRgetR-package}
\alias{CIRgetR}
\docType{package}
\title{
R interface for chemical identifier translation through the Chemical Identifier Resolver (CIR) 
}
\description{
Translation from molecular structural identifiers (InchI, smiles, etc.) to variety of options made available through the Chemical Identifier Resolver (CIR, http://cactus.nci.nih.gov/chemical/structure) including: biological data bases identifiers (PubChem, ChemSpider, etc.), structural information files, and images.
}
\details{
\tabular{ll}{
Package: \tab CIRgetR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-05-05\cr
License: \tab Artistic-2.0\cr
}
~~ An overview of how to use the package, ~~
~~ including the most important functions ~~
}
\author{
Dmitry Grapov
dgrapov@gmail.com
}
\references{
https://github.com/dgrapov/CIRgetR
}

\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
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
}
