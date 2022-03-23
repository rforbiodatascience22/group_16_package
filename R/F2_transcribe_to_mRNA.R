#' Make mRNA sequence from DNA sequence
#'
#' @param dna_seq a string of the letters A, T, C and G
#'
#' @return the same string of letters as input, but with U substituting T
#' @export
#'
#' @examples
mRNA <- function(dna_seq){
  T_to_U <- gsub("T", "U", dna_seq)
  return(T_to_U)
}

