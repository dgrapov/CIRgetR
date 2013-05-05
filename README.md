CIRgetR
=======

R interface for chemical identifier translation through the Chemical Identifier Resolver (CIR) by the CADD Group at the NCI/NIH.


'''R
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
'''
