replace_T <- function(dna_seq){
  T_to_U <- gsub("T", "U", dna_seq)
  return(T_to_U)
}
