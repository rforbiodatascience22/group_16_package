#' Translation of a vector of codons into their corresponding amino acids based on the genetic code
#'
#' @param codons a vector of strings, each of which are 3mers of the letters A, U, C and G
#'
#' @return a single string, with each letter symbolizing an amino acid
#' @export
#'
#' @examples
translation <- function(codons){
  aa_code <- paste0(codon_table[codons], collapse = "")
  return(aa_code)
}