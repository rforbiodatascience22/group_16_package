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
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}

# example to understand substring
# seq_length = 12 (4 codons)
# first -> 1..10
# last -> 3..12
