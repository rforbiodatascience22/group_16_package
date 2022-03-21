test_that("multiplication works", {
  expect_equal(make_codons(mRNA = "AUCGAUGCA") , c("AUC", "GAU", "GCA"))
})
