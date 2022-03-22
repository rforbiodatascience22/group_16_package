<<<<<<< HEAD
#' Title
#'
#' @param mRNA
#' @param start
#'
#' @return
#' @export
#'
#' @examples
make_codons <- function(mRNA, start = 1){
  seq_length <- nchar(mRNA)
  codons <- substring(mRNA,
=======
make_codons <- function(mRNA_seq, start = 1){
  seq_length <- nchar(mRNA_seq)
  codons <- substring(mRNA_seq,
>>>>>>> 1db0788455a140228e361e59dabcc93c782331f3
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}

# example to understand substring
# seq_length = 12 (4 codons)
# first -> 1..10
# last -> 3..12
