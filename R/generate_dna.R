#function takes in a given length (double)
#generates a random sample of bases in dna
#and pastes them together into one string,
#which is thus a randomly generated dna sequence

#name_me1 = generate_dna
#name_me2 = dna_length
#name_me3 = dna_samp_rand 
#name_me4 = dna_seq

#' Title
#'
#' @param dna_length
#' 
#' 
#' 
#'
#' @return 
#' @export
#'
#' @examples

generate_dna <- function(dna_length){
  dna_samp_rand <- sample(c("A", "T", "G", "C"), 
                          size = dna_length, 
                          replace = TRUE)
  dna_seq <- paste0(dna_samp_rand, collapse = "")
  return(dna_seq)
}
