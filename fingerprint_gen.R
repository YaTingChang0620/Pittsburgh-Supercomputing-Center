library(rJava)
library(rcdklibs)
library(rcdk)
library(iterators)
# data("bpdata")
# target.mols <- parse.smiles(bpdata[,1])
# target.fing <- lapply(target.mols, get.fingerprint, type='circular')
# bpdata[,1]

# mol_100414 <- iload.molecules('100414.smiles',type='smi')
# while(hasNext(mol_100414)) {
#   mol100414 <- nextElem(mol_100414)
# }

mol_100414 <- iload.molecules('100414.sdf',type='sdf')
while(hasNext(mol_100414)) {
  mol100414 <- nextElem(mol_100414)
}

