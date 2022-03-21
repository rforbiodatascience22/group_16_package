test_that("sequence is generated", {
  expect_equal(stringr::str_length(generate_dna(6)), 6)
})
