#' Visualize the composition of amino acids in a given amino acid sequence
#'
#' @param aa_code a string where each letter denotes an amino acid
#'
#' @return a ggplot2 bar plot visualization of the counts of occurences of each amino acid in the input sequence
#' @export
#'
#' @importFrom magrittr %>%
visualize_aa_counts <- function(aa_code){
  unique_aas <- aa_code %>%                                       # We want to get a vector of all unique letters in the input string:
    stringr::str_split(pattern = stringr::boundary("character"),  # split string into single letters.
                       simplify = TRUE) %>%                       # when true, returns a matrix. If false, returns list of character vectors.
    as.character() %>%                                            # returns a single vector with all rows of matrix end-to-end.
    unique()                                                      # returns each unique value only once.
  
  counts <- sapply(unique_aas,                                                           # We want to get a vector containing the counts for each unique aa:
                   function(boundary = "") stringr::str_count(string = aa_code,          # applies the str_count function to the unique_aas, getting
                                                              pattern = boundary)) %>%   # the counts from the original input vector aa_code.
    as.data.frame()                                                                      # converts output from two vectors into a single data frame
  
  colnames(counts) <- c("Counts")             # names the column which contains the counts "Counts"
  counts[["Amino_acid"]] <- rownames(counts)  # creates a new column which contains the row name (the amino acid) of that row
  
  count_aas <- counts %>%                                # We want to visualize the amino acid composition using a bar plot:
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid,         # x values is the unique amino acids found in our string.
                                 y = Counts,             # y values is the counts for each unique amino acid.
                                 fill = Amino_acid)) +   # fill is used to give each bar a separate color for each amino acid.
    ggplot2::geom_col() +                                # geom_col is used to make the bar plot as we want the height of the bars to represent values in the data.
    ggplot2::theme_bw()                                  # theme for nicer look.
  
  return(count_aas)
}