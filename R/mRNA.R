#' Function2_make_codons
#'
#' @param dna_seq
#'
#' @return
#' @export
#'
#' @examples
mRNA <- function(dna_seq){
  T_to_U <- gsub("T", "U", dna_seq)
  return(T_to_U)
}

