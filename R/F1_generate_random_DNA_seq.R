#' Generate random DNA sequence
#'
#' @param dna_length user specified input of DNA sequence, integer
#'
#' @return a randomly generated DNA sequence consisting of the bases A, T, C and G. Returned as a string
#' @export
generate_dna <- function(dna_length){
  dna_samp_rand <- sample(c("A", "T", "G", "C"), 
                          size = dna_length, 
                          replace = TRUE)
  dna_seq <- paste0(dna_samp_rand, collapse = "")
  return(dna_seq)
}
