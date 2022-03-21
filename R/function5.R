#' @importFrom magrittr %>%

name_me1 <- function(aa_code){
  unique_aas <- aa_code %>% 
    stringr::str_split(
      pattern = stringr::boundary("character"), 
      simplify = TRUE) %>%
    as.character() %>%
    unique()
  
  counts <- sapply(unique_aas, function(name_me4) stringr::str_count(string = aa_code, pattern =  name_me4)) %>% 
    as.data.frame()
  
  colnames(counts) <- c("Counts")
  counts[["Amino acid"]] <- rownames(counts)
  
  count_aas <- counts %>% 
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()
  
  return(count_aas)
}