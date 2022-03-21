translation <- function(codons){
  aa_code <- paste0(codon_table[codons], collapse = "")
  return(aa_code)
}

