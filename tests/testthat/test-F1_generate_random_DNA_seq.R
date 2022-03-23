# Tests whether
# 1) The length of the generated string is equal to the specified length
# 2) The string consists of only the letters A, C, G and T


test_that("F1 generates a random DNA sequence of the specified length", {
  expect_equal(str_length(generate_dna(20)), 20)
  expect_equal(generate_dna(20) %>% 
                 stringr::str_split(pattern = stringr::boundary("character"), 
                                    simplify = TRUE) %>%
                 as.character() %>%
                 unique() %>% 
                 sort(), 
               c("A", "C", "G", "T"))
})