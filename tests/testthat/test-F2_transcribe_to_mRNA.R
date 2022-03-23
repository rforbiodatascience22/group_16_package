test_that("Ts are succesfully substituted with Us when converting DNA seq to mRNA seq", {
  expect_equal(mRNA(dna_seq = "ATCGATCGATCG"), "AUCGAUCGAUCG")
})
