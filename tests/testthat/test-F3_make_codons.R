test_that("Getting 3mers (codons) from mRNA sequence works", {
  expect_equal(make_codons(mRNA = "AUCGAUGCA") , c("AUC", "GAU", "GCA"))
})
