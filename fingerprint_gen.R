library(rJava)
library(rcdklibs)
library(rcdk)
library(iterators)


# read sdf file and compute the fingerprint (ECFP)
fingerprint_gen <- function(sdffile){
  molecule = list()
  i=1
  mol_i = iload.molecules(sdffile,type='sdf')
  while(hasNext(mol_i)){
    molecule[i] <- nextElem(mol_i)
    i=i+1
  }
  molecule_fing <- lapply(molecule,get.fingerprint,type='circular')
  return(molecule_fing)
}

# five proteint target ID(from ChEMBL): 100414,11910,11359,11267,193
p100414 <- fingerprint_gen('100414.sdf')
p11910 <- fingerprint_gen('11910.sdf')
p11359 <- fingerprint_gen('11359.sdf')
p11267 <- fingerprint_gen('11267.sdf')
p193 <- fingerprint_gen('193.sdf')

