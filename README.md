CIRgetR
=======

R interface for chemical identifier translation through the [Chemical Identifier Resolver (CIR)](http://cactus.nci.nih.gov/chemical/structure) by the CADD Group at the NCI/NIH.

### Install dependancies
```r
#install background packages
install.packages("devtools");install.packages("RJSONIO")
library(devtools);library(RJSONIO)

install_github(repo = "CIRgetR", username = "dgrapov")
library(CIRgetR)
```


### Example of a convertion from SMILES to some of the many possible options in CIR
```r
#Example
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
```
