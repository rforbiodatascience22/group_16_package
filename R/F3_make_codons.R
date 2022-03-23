#' Dividing an mRNA string into 3mers (codons)
#'
#' @param mRNA a string of the letters A, U, C and G
#' @param start the translational starting point. This will be the first letter of the first codon returned. Default is 1
#'
#' @return a vector of strings, each string having length 3.
#' @export
#'
#' @examples

make_codons <- function(mRNA_seq, start = 1){
  seq_length <- nchar(mRNA_seq)
  codons <- substring(mRNA_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}

# example to understand substring
# seq_length = 12 (4 codons)
# first -> 1..10
# last -> 3..12
