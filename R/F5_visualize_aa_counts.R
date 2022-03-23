#' Visualize the composition of amino acids in a given amino acid sequence
#'
#' @param aa_code a string where each letter denotes an amino acid
#'
#' @return a ggplot2 bar plot visualization of the counts of occurences of each amino acid in the input sequence
#' @export
#'
#' @examples
#'
#' @importFrom magrittr %>%
visualize_aa_counts <- function(aa_code){
  unique_aas <- aa_code %>% 
    stringr::str_split(
      pattern = stringr::boundary("character"), 
      simplify = TRUE) %>%
    as.character() %>%
    unique()
  
  counts <- sapply(unique_aas, function(boundary = "") stringr::str_count(string = aa_code, pattern = boundary)) %>% 
    as.data.frame()
  
  colnames(counts) <- c("Counts")
  counts[["Amino_acid"]] <- rownames(counts)
  
  count_aas <- counts %>% 
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()
  
  return(count_aas)
}