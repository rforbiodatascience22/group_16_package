#' Convert DNA sequence into mRNA sequence
#'
#' @param dna_seq 
#' DNA sequence as a string
#'
#' @return
#' mRNA sequence as a string
#' 
#' @export
#'
#' @examples
#' 
#' mRNA("ATGCTTTAAGTA")

mRNA <- function(dna_seq){
  T_to_U <- gsub("T", "U", dna_seq)
  return(T_to_U)
}